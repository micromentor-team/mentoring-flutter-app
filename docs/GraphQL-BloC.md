# Choosing a state management framework

The stateful information processed by the `mm-flutter-app` includes both
short-lived data (such as a graphql query) and long-lived data (such as
signed-in user information). Currently, there is no official guideline as to
what framework should be used to handle both scenarios. This document aims to
provide some analysis and insight as to what the ultimate solution should be.

## Available solutions

### InheritedWidget

[InheritedWidget](https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html)
is a part of the Flutter library and is the cornerstone for all the other state
management frameworks.

It uses the convenient `dependOnInheritedWidgetOfExactType` method of
`BuildContext` to attach itself to it. Then, when another widget uses `Builder`
and gets desired `InheritedWidget` subclass instance from the context, it is
going to be refreshed whenever the state changes.

Shortened version of example from docs:

``` dart
class FrogColor extends InheritedWidget {
  const FrogColor({ super.key, required this.color, required super.child });

  final Color color;

  static FrogColor? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FrogColor>();
  }

  static FrogColor of(BuildContext context) { /* reuse maybeOf */ }

  @override
  bool updateShouldNotify(FrogColor oldWidget) => color != oldWidget.color;
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FrogColor(
        color: Colors.green,
        child: Builder(
          builder: (BuildContext innerContext) {
            return Text(
              'Hello Frog',
              style: TextStyle(color: FrogColor.of(innerContext).color),
            );
          },
        ),
      ),
    );
  }
}
```

### Provider

[Provier](https://pub.dev/packages/provider) is the most basic wrapper around
`InheritedWidget`. It’s presented as the default state management utility in
[Flutter docs](https://docs.flutter.dev/data-and-backend/state-mgmt/simple).

`InheritedWidget` is encapsulated in `ChangeNotifier` class and its subclass
instance can be later injected into the app context using
`ChangeNotifierProvider` (or `ChangeNotifierProxyProvider` if one
`ChangeNotifier` depends on another).

Shortened version of example from docs:

``` dart
class CartModel extends ChangeNotifier {
  final List<Item> items = [];

  int get totalPrice => items.map((item) => item.price).sum;

  void add(Item item) {
    items.add(item);
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: Consumer<CartModel>(
        builder: (context, cart, child) {
          // If `cart.items` is mutated this will be rerendered with new value.
          return Text('Total price: ${cart.totalPrice}');
        },
      );
    ),
  );
}
```

Differences from `InheritedWidget` are that we do not need to implement some
boilerplate (`maybeOf` and `of`), and we update dependent widget more
imperatively (via `notifyListeners` base function instead of more global
`updateShouldNotify` override)

### Riverpod

[Riverpod](https://riverpod.dev/) is written by the author of `Provider`. Its
documentation is a bit fuzzy as it’s in the process of releasing the 2.0
version. It extends its predecessor with more customized providers (such as
`FutureProvider` or `StreamProvider`). It removes the need to use
`notifyListeners` as it instead focuses on defining state - whenever it changes
all dependent widgets will be updated.

Shortened version of [example from
GitHub](https://github.com/rrousselGit/riverpod/blob/master/examples/counter/lib/main.dart):

``` dart
@riverpod
class Counter extends _$Counter /* _$Counter is automatically generated */ {
  @override
  int build() => 0; // initial state

  void increment() => state++;
}

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        // counterProvider is a product of code generation,
        // stored next to the _$Counter base class
        child: Text('${ref.watch(counterProvider)}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

### Bloc

[Bloc](https://bloclibrary.dev/) is a very popular state management library. It
has a very high quality documentation and provides both a simple framework
similar to `Provider` that is called
[Cubit](https://bloclibrary.dev/#/coreconcepts?id=cubit) and another, oriented
towards event handling, called
[Bloc](https://bloclibrary.dev/#/coreconcepts?id=bloc).

`Bloc` clearly distincts between state, state handler and event. In its simplest
form it triggers asynchronously a specific event handler when called and
refreshes all the dependant widgets on state change (which is usually detected
by extending state container with
[equatable](https://pub.dev/packages/equatable) class). It supports selective
widget refreshing based on state change filtering and has other convenient
utilities.

Shortened version of [example from
docs](https://bloclibrary.dev/#/flutterbloccoreconcepts?id=usage):

``` dart
sealed class CounterEvent {}
final class CounterIncrementPressed extends CounterEvent {}
final class CounterDecrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));
  }
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: Scaffold(
        body: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Center(child: Text('$count'));
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => context.read<CounterBloc>().add(CounterIncrementPressed()),
        ),
      );
    );
  }
}
```

### Summary

All the state management frameworks are similar to each other. Each uses
`InheritedWidget` underneath and provides a different convention for mutating
state. While Bloc seems to be the most mature of all of them (mostly because of
its great documentation, number of examples and a clear idea), Provider is still
a viable choice for simple usage. I don’t have that much experience with
flutter, but it seems that Riverpod and Bloc start to pay off only when
optimizing the app code for less frequent rerendering or having tighter wrappers
for data fetching.

On an interesting note: all the frameworks other than `InheritedWidget` are
written and maintained by single developers (same one in case of Provider and
Riverpod). It seems to be a prevalent issue in Flutter ecosystem that a lot of
popular packages have a fragile support. A certain xkcd comic comes to mind:

![xkcd: Dependency](https://imgs.xkcd.com/comics/dependency_2x.png)

## Use cases

### GraphQL

Backend for `mm-flutter-app` serves MongoDB data as a GraphQL endpoint. In the
app it’s later handled using
[graphql_flutter](https://pub.dev/packages/graphql_flutter) library. In the
current implementation we wrap fetching data with
[runQuery](https://github.com/micromentor-team/mm-flutter-app/blob/6ee5b9a515c6ae65b0d74b37e31ad3f9644e6aed/lib/data/models/base/base_provider.dart#L14-L20)
function:

``` dart
Widget runQuery<T extends BaseResult>({
  required BaseOperation operation,
  required Widget Function(
    T? data, {
    void Function()? refetch,
    void Function(FetchMoreOptions)? fetchMore,
  }) onData,
  Widget Function()? onLoading,
  Widget Function(String error, {void Function()? refetch})? onError,
}) {
  /* ... */
}
```

All the queries are grouped in `ChangeNotifier`s (using the Provider package):
[UserProvider](https://github.com/micromentor-team/mm-flutter-app/blob/6ee5b9a515c6ae65b0d74b37e31ad3f9644e6aed/lib/data/models/user/user_provider.dart),
[ChannelsProvider](https://github.com/micromentor-team/mm-flutter-app/blob/6ee5b9a515c6ae65b0d74b37e31ad3f9644e6aed/lib/data/models/channels/channels_provider.dart),
and
[MessagesProvider](https://github.com/micromentor-team/mm-flutter-app/blob/6ee5b9a515c6ae65b0d74b37e31ad3f9644e6aed/lib/data/models/messages/messages_provider.dart).
The convention here is a bit fuzzy, most of these methods could be static as
they are not tied to any specific class value except for the `GraphQLClient`.

The dependency [recommended in the graphql_flutter
repository](https://github.com/zino-hofmann/graphql-flutter#utils-tools) is
[graphql_flutter_bloc](https://github.com/artflutter/graphql_flutter_bloc) which
tightly integrates with the Bloc state management framework. It doesn’t have any
documentation at all but based on [the
example](https://github.com/artflutter/graphql_flutter_bloc/tree/master/example)
we may figure out that what happens is that [GraphQL
queries](https://github.com/artflutter/graphql_flutter_bloc/tree/master/example/graphql/q/queries)
are transpiled into [Dart
code](https://github.com/artflutter/graphql_flutter_bloc/tree/master/example/lib/models/graphql)
and can be later [wrapped with
Bloc](https://github.com/artflutter/graphql_flutter_bloc/tree/master/example/lib/bloc)
in a clean and boilerplate-free way. In the end, it’s possible to run queries
[like
this](https://github.com/artflutter/graphql_flutter_bloc/blob/master/example/lib/bloc_search_query.dart):

``` dart
BlocBuilder<SearchCompanyBloc, QueryState<SearchCompany$Query>>(
  bloc: SearchCompanyBloc(client: client),
  builder: (_, state) {
    return state.when(
      initial: () => Container(),
      loading: (_) => const Center(child: CircularProgressIndicator()),
      error: (error, __, ___) => ListView(children: [
        Text(
          parseOperationException(error),
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        )
      ]),
      loaded: _displayResult,
      refetch: _displayResult,
      fetchMore: _displayResult,
    );
  },
)
```

A nice benefit of this overall is that this doesn’t require writing any wrapper
code and the result is fully typed (GraphQL schema is fetched during the
`build_runner` step). At the same time, this is not that much different from
what we have right now. The main benefit or using this together with Bloc is
that it’s easier to share query results between `Widget`s, but that’s not
something impossible to achieve with provider alone. And should
[graphql_codegen](https://github.com/heftapp/graphql_codegen) be used for
parsing `.graphql` files into Dart then there is no clear advantage to migrating
to this dependency.

### Application state

So far the only real state that we preserve throughout user session is user
metadata from authentication. In the future, this may go further to contain also
matched mentor data, some messages, etc. These values may be coupled with more
difficult state handling (e.g. sending, editing, removing messages) which would
work best with Bloc as it enforces clear event representation.

## Conclusion

The app in its current state relies on the Provider framework and uses it as a
“bag” for functions shared between widgets. While this is not the most elegant
way to use it, it gets the job done and is simple to comprehend and expand.

Moving to Bloc would be a severe effort and considering we’re early in the
product development I’m hesitant to recommend moving resources to getting this
migrated. While it could help with ensuring the codebase is clean and its
functionality is nicely split, there are issues with the GraphQL integration.
The recommended dependency has no documentation whatsoever, is of low
popularity, and has exactly one maintainer. We are progressing with GraphQL
codegen ([PR \#40](https://github.com/micromentor-team/mm-flutter-app/pull/40)),
and the current wrapper around queries (with `onData`, `onError`, `onLoading`)
is very similar to the interface provided by `graphql_flutter_bloc`.

Based on this we should focus on cleaning up our `Providers` instead and
continue rolling with what we have. There is no need to employ any other form of
state management at this time.
