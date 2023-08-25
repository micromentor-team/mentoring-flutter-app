// 🧑🏻‍🔧  https://www.regextester.com/?fam=122123
// The test site will not save the entirety of our test string into memory, the whole text is found in ./emoji_test_text.txt

import 'package:flutter/material.dart';

class EmojiUtils {
  EmojiUtils._private();
  static final RegExp emojiRegExp = RegExp(
      r"(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])");

  static bool containsEmojis(String text) {
    if (text.isEmpty) return false;
    return emojiRegExp.hasMatch(text);
  }

  static bool isOnlyEmoji(String text) {
    if (text.isEmpty) return false;
    final charList =
        Characters(text).where((p0) => !emojiRegExp.hasMatch(p0)).toList();
    if (charList.isNotEmpty) {
      return false;
    } else {
      return true;
    }
  }

  static int emojiCount(String text) {
    if (text.isEmpty) return 0;
    final emojiCount =
        Characters(text).where((p0) => emojiRegExp.hasMatch(p0)).length;
    return emojiCount;
  }

  static List getCharacterList(String text,
      {bool emojiOnly = false, bool sansEmoji = false}) {
    if (text.isEmpty) return Characters(text).toList();
    final charList =
        Characters(text).where((p0) => !emojiRegExp.hasMatch(p0)).toList();
    final sansEmojiList =
        Characters(text).where((p0) => !emojiRegExp.hasMatch(p0)).toList();
    final emojiList =
        Characters(text).where((p0) => emojiRegExp.hasMatch(p0)).toList();
    if (emojiOnly) {
      return emojiList;
    } else if (sansEmoji) {
      return sansEmojiList;
    } else {
      return charList;
    }
  }

  static List<MessageFragment> splitTextAndEmoji(String message) {
    List<MessageFragment> messageFragments = [];
    String currentFragmentText = '';
    // Iterate over each character in the message and create fragments of only
    // text and only emoji.
    final Characters chars = Characters(message);
    for (String char in chars) {
      if (emojiRegExp.hasMatch(char)) {
        if (currentFragmentText.isNotEmpty &&
            !emojiRegExp.hasMatch(currentFragmentText)) {
          messageFragments.add(
            MessageFragment(
              text: currentFragmentText,
              isEmoji: false,
            ),
          );
          currentFragmentText = '';
        }
        currentFragmentText += char;
      } else {
        if (currentFragmentText.isNotEmpty &&
            emojiRegExp.hasMatch(currentFragmentText)) {
          messageFragments.add(
            MessageFragment(
              text: currentFragmentText,
              isEmoji: true,
            ),
          );
          currentFragmentText = '';
        }
        currentFragmentText += char;
      }
    }

    if (currentFragmentText.isNotEmpty) {
      messageFragments.add(
        MessageFragment(
          text: currentFragmentText,
          isEmoji: isOnlyEmoji(currentFragmentText),
        ),
      );
    }
    return messageFragments;
  }
}

class MessageFragment {
  final String text;
  final bool isEmoji;

  MessageFragment({
    required this.text,
    required this.isEmoji,
  });
}
