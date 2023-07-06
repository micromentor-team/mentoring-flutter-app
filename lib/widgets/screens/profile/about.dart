import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final aboutController = TextEditingController();
  dynamic _selectedEmoji;

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return buildSticker();
                          });
                    },
                    child: _selectedEmoji != null
                        ? Text(
                            '$_selectedEmoji',
                            style: const TextStyle(fontSize: 20),
                          )
                        : const Icon(Icons.add_reaction_outlined)),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    height: 30,
                    child: TextFormField(
                      controller: aboutController,
                      decoration: const InputDecoration(
                          hintText: 'Write a few words about yourself...',
                          alignLabelWithHint: true,
                          contentPadding: EdgeInsets.only(
                              bottom: 8, right: 5, left: 5, top: 8)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        aboutController.clear();
                        _selectedEmoji = null;
                      });
                    },
                    child: const Icon(Icons.cancel_outlined)),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              title: const Text(
                'Speak freely',
              ),
              leading: const Icon(
                Icons.waving_hand,
                size: 25,
                color: Colors.green,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Take a break',
              ),
              leading: const Icon(
                Icons.mobile_off,
                size: 25,
                color: Colors.grey,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Coffee lover',
              ),
              leading: const Icon(
                Icons.coffee,
                size: 25,
                color: Colors.brown,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Free to chat',
              ),
              leading: const Icon(
                Icons.thumb_up,
                size: 25,
                color: Colors.orange,
              ),
              onTap: () {},
            ),
            const Expanded(child: SizedBox()),
            Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () async {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Your about is updated.'),
                      ));
                      Navigator.of(context).pop();
                      await userProvider.updateUserData(
                        input: Input$UserInput(
                          adminNotes: '$_selectedEmoji ${aboutController.text}',
                        ),
                      );
                    },
                    child: const Text('Save'))),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }

  Widget buildSticker() {
    return SizedBox(
      height: 350,
      child: EmojiPicker(
        onEmojiSelected: (Category? category, Emoji? emoji) {
          setState(() {
            _selectedEmoji = emoji!.emoji;
          });
        },
        config: Config(
          columns: 8,
          emojiSizeMax: 32 *
              (foundation.defaultTargetPlatform == TargetPlatform.iOS
                  ? 1.30
                  : 1.0),
          verticalSpacing: 0,
          horizontalSpacing: 0,
          gridPadding: EdgeInsets.zero,
          initCategory: Category.RECENT,
          bgColor: const Color(0xFFF2F2F2),
          indicatorColor: Colors.blue,
          iconColor: Colors.grey,
          iconColorSelected: Colors.blue,
          backspaceColor: Colors.blue,
          skinToneDialogBgColor: Colors.white,
          skinToneIndicatorColor: Colors.grey,
          enableSkinTones: true,
          recentsLimit: 28,
          replaceEmojiOnLimitExceed: false,
          loadingIndicator: const SizedBox.shrink(),
          tabIndicatorAnimDuration: kTabScrollDuration,
          categoryIcons: const CategoryIcons(),
          buttonMode: ButtonMode.MATERIAL,
          checkPlatformCompatibility: true,
          showRecentsTab: false,
        ),
      ),
    );
  }
}
