import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  final Function(String)? onChanged;
  const SearchContainer({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
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
