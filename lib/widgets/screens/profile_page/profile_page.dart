import 'package:flutter/material.dart';
import 'package:mm_flutter_app/main.dart';
import 'package:mm_flutter_app/widgets/screens/profile_page/about.dart';
import 'package:mm_flutter_app/widgets/screens/profile_page/your_email.dart';
import 'package:mm_flutter_app/widgets/screens/profile_page/your_name.dart';
import 'package:provider/provider.dart';

import '../../../data/models/user/user.dart';
import '../../../data/models/user/user_provider.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({Key? key}) : super(key: key);

  bool editable = false;

  late User user;

  _getUser(context) async {
    final userProvider = Provider.of<UserProvider>(context);
    user = await userProvider.getUserData();
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SafeArea(
        child: FutureBuilder(
            future: _getUser(context),
            builder: (context, snapshot) {
              try {
                if (snapshot.connectionState == ConnectionState.done) {
                  print(snapshot.data);
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 50,
                              child: ClipOval(
                                child: FadeInImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(user.avatarUrl,
                                        scale: 0.75),
                                    placeholder: const NetworkImage(
                                        'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png')),
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                              height: 35,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Edit photo'))),
                          const SizedBox(
                            height: 40,
                          ),
                          ListTile(
                              title: const Text(
                                "Name",
                              ),
                              leading: const Icon(
                                Icons.account_circle_rounded,
                                size: 40,
                                color: Colors.black,
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>  YourName()));
                              },
                              subtitle:  Text(user.fullName,
                                  style: const TextStyle(color: Colors.grey))),
                          ListTile(
                              title: Text(
                                "Email",
                              ),
                              leading: const Icon(
                                Icons.email_outlined,
                                size: 40,
                                color: Colors.black,
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>  YourEmail()));
                              },
                              subtitle:  Text(user.email,
                                  style: const TextStyle(color: Colors.grey))),
                          ListTile(
                              title: const Text(
                                'About',
                              ),
                              leading: const Icon(
                                Icons.edit_outlined,
                                size: 40,
                                color: Colors.black,
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const About()));
                              },
                              subtitle: Text(user.adminNotes != ""?user.adminNotes:
                                  'Write a few words about yourself',
                                  style: TextStyle(color: Colors.grey))),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 15),
                            child:  Text(
                              'Your profile and changes to it will be visible to people you message and contacts.',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }else {
                  return const Center(
                      child: CircularProgressIndicator());
                }
              } catch (error) {
                rethrow;
              }
            }),
      ),
    );
  }
}
