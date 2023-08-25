// 🧑🏻‍🔧  https://www.regextester.com/?fam=122123
// The test site will not save the entirety of our test string into memory, the whole text is found in ./emoji_test_text.txt

import 'package:flutter/material.dart';

class EmojiUtils {
  static bool containsEmojis(String text) {
    if (text.isEmpty) return false;
    RegExp regExp = RegExp(
        r"(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])");
    return regExp.hasMatch(text);
  }

  static bool strictlyEmojis(String text) {
    if (text.isEmpty) return false;
    RegExp regExp = RegExp(
        r"(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])");
    final charList =
        Characters(text).where((p0) => !regExp.hasMatch(p0)).toList();
    if (charList.isNotEmpty) {
      return false;
    } else {
      return true;
    }
  }

  static int emojiCount(String text) {
    if (text.isEmpty) return 0;
    RegExp regExp = RegExp(
        r"(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])");
    final emojiCount =
        Characters(text).where((p0) => regExp.hasMatch(p0)).length;
    return emojiCount;
  }

  static List getCharacterList(String text,
      {bool emojiOnly = false, bool sansEmoji = false}) {
    if (text.isEmpty) return Characters(text).toList();
    RegExp regExp = RegExp(
        r"(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])");
    final charList =
        Characters(text).where((p0) => !regExp.hasMatch(p0)).toList();
    final sansEmojiList =
        Characters(text).where((p0) => !regExp.hasMatch(p0)).toList();
    final emojiList =
        Characters(text).where((p0) => regExp.hasMatch(p0)).toList();
    if (emojiOnly) {
      return emojiList;
    } else if (sansEmoji) {
      return sansEmojiList;
    } else {
      return charList;
    }
  }
}
