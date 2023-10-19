import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeSkeleton extends StatelessWidget {
  const HomeSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    const bgmColour = Color(0xFFF4EFF4);
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25,),
              Row(
                children: [
                  Container(
                    width: 32,
                    height: 30.32,
                    decoration: ShapeDecoration(
                      color: bgmColour,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    width: mediaQuery.width * 0.6,
                    height: 28,
                    decoration: ShapeDecoration(
                      color: bgmColour,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                height: 125,
                decoration: ShapeDecoration(
                  color: bgmColour,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Expanded(child: Container()),
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 30,
                    decoration: ShapeDecoration(
                      color: bgmColour,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 100,
                    height: 20,
                    decoration: ShapeDecoration(
                      color: bgmColour,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        width: 57,
                        height: 54,
                        decoration: ShapeDecoration(
                          color: bgmColour,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      title: Container(
                        margin: EdgeInsets.only(
                            top: 2,
                            bottom: 2,
                            right: mediaQuery.width * 0.2),
                        height: 20,
                        decoration: ShapeDecoration(
                          color: bgmColour,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                      subtitle: Container(
                        margin: EdgeInsets.only(
                            top: 2,
                            bottom: 2,
                            right: mediaQuery.width * 0.2),
                        height: 20,
                        decoration: ShapeDecoration(
                          color: bgmColour,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    );
                  }),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 30,
                    decoration: ShapeDecoration(
                      color: bgmColour,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 100,
                    height: 20,
                    decoration: ShapeDecoration(
                      color: bgmColour,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 200,
                height: 15,
                decoration: ShapeDecoration(
                  color: bgmColour,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: ListView(
                  // This next line does the trick.
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: mediaQuery.width * 0.13,
                      height: 248.91,
                      decoration: const ShapeDecoration(
                        color: bgmColour,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                      ),
                    ),
                    Container(
                      width: mediaQuery.width * 0.6,
                      height: 248.91,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: ShapeDecoration(
                        color: bgmColour,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    Container(
                      width: mediaQuery.width * 0.15,
                      height: 248.91,
                      margin:const EdgeInsets.symmetric(horizontal: 5),
                      decoration: const ShapeDecoration(
                        color: bgmColour,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15))),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 200,
                height: 30,
                decoration: ShapeDecoration(
                  color: bgmColour,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        width: 337,
                        height: 127,
                        decoration: const ShapeDecoration(
                          color: bgmColour,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      subtitle: Container(
                        margin: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.1),
                        height: 20,
                        decoration: ShapeDecoration(
                          color: bgmColour,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    );
                  }),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
