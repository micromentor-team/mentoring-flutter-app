import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/screens/home/users_list.dart';

import '../../molecules/search_container.dart';
import '../home_menu/home_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeMenu(),
      appBar: AppBar(elevation: 0.5),
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
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Start a Conversation',
                            style: TextStyle(
                                fontSize: 27, color: Colors.deepPurple),
                          ),
                        ],
                      ),
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
                  Users(searchValue),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
