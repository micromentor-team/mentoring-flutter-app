import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget rating(value) {
  return RatingBar.builder(
    initialRating: value.toDouble(),
    direction: Axis.horizontal,
    // allowHalfRating: true,
    itemCount: value,
    itemSize: 18,
    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
    itemBuilder: (context, _) => const Icon(
      Icons.check,
      color: Colors.green,
    ),
    onRatingUpdate: (rating) {},
  );
}
