import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/screens/profile/about.dart';
import 'package:mm_flutter_app/widgets/screens/profile/your_email.dart';
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
            CircleAvatar(
                radius: 50,
                child: ClipOval(
                  child: FadeInImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(user.avatarUrl ?? placeholderImage,
                        scale: 0.75),
                    placeholder: NetworkImage(placeholderImage),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 35,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Edit photo'),
              ),
            ),
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => YourName(),
                  ),
                );
              },
              subtitle: Text(
                user.fullName,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => YourEmail(),
                  ),
                );
              },
              subtitle: user.email != null
                  ? Text(
                      user.email!,
                      style: const TextStyle(color: Colors.grey),
                    )
                  : null,
            ),
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const About(),
                  ),
                );
              },
              subtitle: Text(
                user.adminNotes != null
                    ? user.adminNotes!
                    : 'Write a few words about yourself',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Your profile and changes to it will be visible to people you message and contacts.',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
