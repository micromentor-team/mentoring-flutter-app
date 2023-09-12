import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/scaffold_model.dart';
import 'package:provider/provider.dart';

mixin NavigationMixin<T extends StatefulWidget> on State<T>
    implements RouteAware {
  late final ScaffoldModel _scaffoldModel;
  late GoRouter _router;
  late final RouteObserver<PageRoute> _routeObserver;
  PageRoute? _pageRoute;

  AsyncState get navigationState => _scaffoldModel.state;
  PageRoute get pageRoute => _pageRoute!;
  GoRouter get router => _router;

  @override
  void initState() {
    super.initState();
    _scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    _routeObserver = Provider.of<RouteObserver<PageRoute>>(
      context,
      listen: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _router = GoRouter.of(context);
    if (_pageRoute != null) {
      _routeObserver.unsubscribe(this);
    }
    _pageRoute = ModalRoute.of(context)! as PageRoute;
    _routeObserver.subscribe(this, _pageRoute!);
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPop() {}

  @override
  void didPopNext() {}

  @override
  void didPush() {}

  @override
  void didPushNext() {}

  void buildPageRouteScaffold(
      void Function(ScaffoldModel scaffoldModel) build) {
    if (_pageRoute!.isCurrent &&
        _scaffoldModel.lastRefreshRoute != _router.location) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scaffoldModel.setLastRefreshRoute(_router.location);
        build(_scaffoldModel);
      });
    }
  }
}