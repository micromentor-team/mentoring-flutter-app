import 'package:flutter/material.dart';
import '../screens/home/dialog_and_rating.dart';

class SearchContainer extends StatelessWidget {
  Function(String)? onChanged;
  SearchContainer({Key? key,required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: [
            const Icon(Icons.account_circle),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
                onTap: () {
                  filterDialog(context);
                },
                child: const Icon(Icons.tune_sharp)),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
            height: 35,
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              onChanged: onChanged,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)),
                hintText: 'Search by country, industry or expenditure',
              ),
            ))
      ],
    ),
      ),
    );
  }
}
