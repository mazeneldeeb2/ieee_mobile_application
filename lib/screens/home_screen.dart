import 'package:app/compenents/side_bar.dart';
import 'package:app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../compenents/home_text.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          if (Provider.of<Data>(context, listen: false).isOpened == true) {
            isClicked = false;
            Provider.of<Data>(context, listen: false).changeIsOpened(isClicked);
            return false;
          } else {
            return true;
          }
        },
        child: GestureDetector(
          onTap: () {
            if (Provider.of<Data>(context, listen: false).isOpened == true) {
              isClicked = false;
            }
            Provider.of<Data>(context, listen: false).changeIsOpened(isClicked);
          },
          child: Stack(
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
        ),
      );
}
