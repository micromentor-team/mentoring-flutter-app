import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void filterDialog(context) {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        alignment: Alignment.topRight,
        insetPadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'All Filters',
                      style: TextStyle(fontSize: 25),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.cancel)),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [Text('Sort'), Text('Relevance')],
                    ),
                     Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text('Language'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text('Home Country'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Industry'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Expertise'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Country Experience'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('RESET'))),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('UPDATE'))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ));
}

Widget rating(value){
  return RatingBar.builder(
    initialRating: value.toDouble(),
    direction: Axis.horizontal,
    // allowHalfRating: true,
    itemCount: value,
    itemSize: 18,
    itemPadding:
    const EdgeInsets.symmetric(horizontal: 1.0),
    itemBuilder: (context, _) => const Icon(
      Icons.check,
      color: Colors.green,
    ),
    onRatingUpdate: (rating) {
    },
  );
}

