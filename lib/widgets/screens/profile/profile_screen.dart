import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/screens/profile/your_name.dart';
import 'package:provider/provider.dart';

String placeholderImage =
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const SafeArea(
        child: UserProfile(),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return userProvider.queryUser(
      onLoading: () {
        return const SizedBox.shrink();
      },
      onError: (error) {
        return Text('Error: $error');
      },
      onData: (data) {
        User user = User.fromJson(data);
        return Profile(user: user);
      },
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                user.fullName,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              subtitle: const Text(
                "Jaipur, India",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              leading: CircleAvatar(
                radius: 50,
                // height: 100,
                child: ClipOval(
                  child: FadeInImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(user.avatarUrl ?? placeholderImage,
                        scale: 2.75),
                    placeholder: NetworkImage(placeholderImage),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => YourName(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Wrap(
                      children: [
                        Icon(
                          Icons.language,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('English'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Wrap(
                      children: [
                        Icon(
                          Icons.thumb_up,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('LinkedIn'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                title: const Text(
                  "Bio",
                  style: TextStyle(color: Colors.black38),
                ),
                subtitle: const Text(
                  "Hi, I'm Rupal,  is the founder and CEO of Rupal's Kitchen, a home-grown food delivery service in Mumbai, India.",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                title: const Text(
                  "Venture",
                  style: TextStyle(color: Colors.black38),
                ),
                subtitle: const Text(
                  "I started my company, Rupal's Kitchen, in 2015 with a mission to provide fresh, healthy, and affordable meals to busy professionals and families. Today, Rupal's Kitchen is one of the most popular food delivery services in Jaipur, with over 10,000 customers.",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    title: const Text(
                      'Mentorship Preferences',
                      style: TextStyle(color: Colors.black38),
                    ),
                    subtitle: const Text(
                      "My biggest challenges are building my business up such that I can grow sustainably over the next year.",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: const Text('M'),
                          ),
                          label: const Text('Marketing'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: const Text('S'),
                          ),
                          label: const Text('Sales'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: const Text('H'),
                          ),
                          label: const Text('Hiring'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Wrap(
                      children: [
                        Icon(
                          Icons.edit,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Edit Profile'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Wrap(
                      children: [
                        Icon(
                          Icons.delete,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Delete Profile'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
