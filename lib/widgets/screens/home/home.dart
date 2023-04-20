import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import '../../../data/models/channels/channels_provider.dart';
import '../../../data/models/user/user.dart';
import '../../../data/models/user/user_provider.dart';
import '../../molecules/search_container.dart';
import '../../organisms/user_expanded_card.dart';
import '../homeMenu/homeMenu.dart';
import '../message/conversationScreen.dart';
import '../../organisms/user_card.dart';
import 'package:mm_flutter_app/widgets/screens/home/dialog_and_rating.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> usersList = [];
  List<User> users = [];
  String searchValue = '';

  _getAllExpertise(context, value) async {
    final userProvider = Provider.of<UserProvider>(context);
    usersList = await userProvider.getAllUsers();
    final user = userProvider.user;
    usersList.removeWhere((element) => element!.id == user!.id);
    usersList = usersList.where((i) => i.fullName != '').toList();
    // userProvider.notifyListeners();
    users = usersList
        .where((element) =>
            element.fullName.toLowerCase().contains(value.toLowerCase()))
        .toList();
    return users;
  }

  _openChatScreen(user, channelId) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ConversationScreen(
              userId: user.id.toString(),
              title: user.fullName.toString(),
              image: user.avatarUrl.toString(),
              channelId: channelId.toString(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeMenu(),
      appBar: AppBar(elevation: 0.5, actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(Icons.message),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              child: const Icon(Icons.more_vert),
              itemBuilder: (ctx) => [
                const PopupMenuItem(
                  child: Text('Inbox'),
                ),
                const PopupMenuItem(
                  child: Text('Search'),
                ),
                const PopupMenuItem(
                  child: Text('My Trainings'),
                ),
                const PopupMenuItem(
                  child: Text('My Stats'),
                ),
                const PopupMenuItem(
                  child: Text('My Q&A'),
                ),
                const PopupMenuItem(
                  child: Text('Saved Profiles'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ]),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          right: 15.0,
          left: 15.0,
        ),
        child: RefreshIndicator(
          onRefresh: () async {
            setState(() {});
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Start a Conversation',
                              style: TextStyle(
                                  fontSize: 27, color: Colors.deepPurple),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'For tips on getting started, ',
                                  style: TextStyle(fontSize: 15),
                                ),
                                GestureDetector(
                                    child: const Text('click here.',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue))),
                              ],
                            )
                          ],
                        ),
                        const Icon(
                          Icons.edit_document,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SearchContainer(
                  onChanged: (value) {
                    setState(() {
                      searchValue = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                FutureBuilder(
                    future: _getAllExpertise(context, searchValue),
                    builder: (context, snapshot) {
                      try {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Column(
                            children: [
                              ListView.builder(
                                  physics: const ScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: users.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ExpandableNotifier(
                                      child: Expandable(
                                        collapsed: ExpandableButton(
                                          child: Card(
                                              child: userCard(users, index)),
                                        ),
                                        expanded: ExpandableButton(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: userExpandedCard(
                                                users: users,
                                                context: context,
                                                index: index),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ],
                          );
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      } catch (error) {
                        rethrow;
                      }
                    }),

                // const SizedBox(
                //   height: 15,
                // ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
