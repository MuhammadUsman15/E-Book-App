// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'app_colors.dart' as appcolor;

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appcolor.background,
      child: SafeArea(
          child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 24,
                  ),
                  Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.notifications)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Popular Books",
                    style: TextStyle(fontSize: 38),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              child: Stack(children: [
                Positioned(
                  top: 0,
                  left: -20,
                  right: 0,
                  child: Container(
                    height: 180,
                    child: PageView.builder(
                        controller: PageController(viewportFraction: 0.8),
                        itemCount: 5,
                        itemBuilder: (_, i) {
                          return Container(
                            height: 180,
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("image/pic_1.png"),
                                  fit: BoxFit.fill,
                                )),
                          );
                        }),
                  ),
                )
              ]),
            ),
          ],
        ),
      )),
    );
  }
}
