import 'package:flutter/material.dart';

class TuneIcon extends StatelessWidget {
  const TuneIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showOptions() {
      showDialog(
          barrierDismissible: true,
          context: context,
          builder: (BuildContext context) => SimpleDialog(
                alignment: Alignment.topRight,
                insetPadding: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
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
                              children: [Text('Sort'), Text('Relevance')],
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
                          children: [
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
                          children: [
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
                                    onPressed: () {},
                                    child: const Text('RESET'))),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('UPDATE'))),
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

    return Center(
      child: GestureDetector(onTap: showOptions, child: const Icon(Icons.tune)),
    );
  }
}
