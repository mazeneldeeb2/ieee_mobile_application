import 'package:app/compenents/side_bar.dart';
import 'package:flutter/material.dart';

import '../compenents/home_text.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 50.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    HomeText(
                      title: "I E E E",
                    ),
                    HomeText(
                      title: "S S C S",
                      color: Color(0xffBA1B1B),
                    ),
                    HomeText(
                      title: "Alex S C",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    HomeText(
                      title: "Providing the future electronics enginners",
                      size: 12,
                      color: Colors.grey,
                      weight: FontWeight.normal,
                    ),
                    HomeText(
                      title: "with the knowledge and skills they need",
                      size: 12,
                      color: Colors.grey,
                      weight: FontWeight.normal,
                    )
                  ]),
            ),
          ),
          const SideBar(),
        ],
      ),
    );
  }
}
