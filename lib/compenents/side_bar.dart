import 'package:app/compenents/side_box.dart';
import 'package:app/data/data.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../screens/article_list_screen.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    bool providerIsClicked = Provider.of<Data>(context).isOpened;
    Widget unOpenedBoxes = GestureDetector(
        onTap: () {
          if (Provider.of<Data>(context, listen: false).isOpened == false) {
            isClicked = true;
          } else {
            isClicked = false;
          }
          Provider.of<Data>(context, listen: false).changeIsOpened(isClicked);
        },
        child: Column(children: [
          SideBox(
            onTap: () {
              if (Provider.of<Data>(context, listen: false).isOpened == false) {
                isClicked = true;
              } else {
                isClicked = false;
              }
              Provider.of<Data>(context, listen: false)
                  .changeIsOpened(isClicked);
            },
            boxColor: const Color(0xFF4200CF),
            icon: Icons.home,
            iconColor: Colors.white,
            title: "Home",
            titleColor: Colors.white,
          ),
          SideBox(
            onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ArticleListScreen()))),
            icon: Icons.article,
            title: "Article",
          ),
          const SideBox(
            icon: Icons.login,
            title: "Login",
          ),
          const SideBox(
            icon: Icons.event,
            title: "Events",
          ),
          const SideBox(
            icon: Icons.image,
            title: "Gallery",
          ),
          const SideBox(
            icon: Icons.info,
            title: "About us",
          )
        ]));

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: providerIsClicked ? width / 2.3 : width / 5.8,
      child: Container(
        width: width / 5.8,
        height: height,
        padding: EdgeInsets.only(
          top: height / 7,
          left: 10,
          right: 10,
        ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            color: Color(0xFF880000)),
        child: unOpenedBoxes,
      ),
    );
  }
}
