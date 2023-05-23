import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/widgets/screens/home/users_list.dart';

import '../../molecules/search_container.dart';
import '../home_menu/home_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchValue = '';

  List<User> searchNames(users) {
    return users.where((user) =>
        user.fullName.toLowerCase().contains(searchValue.toLowerCase()));
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
              Column(
                children: [
                  Users(
                    search: searchValue,
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
