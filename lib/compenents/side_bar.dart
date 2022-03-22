import 'package:app/compenents/opened_box.dart';
import 'package:app/compenents/unopened_side_box.dart';
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
        child: Column(children: const [
          UnopenedSideBox(
            boxColor: Color(0xFF4200CF),
            icon: Icons.home,
            iconColor: Colors.white,
          ),
          UnopenedSideBox(
            icon: Icons.article,
          ),
          UnopenedSideBox(
            icon: Icons.login,
          ),
          UnopenedSideBox(
            icon: Icons.event,
          ),
          UnopenedSideBox(
            icon: Icons.image,
          ),
          UnopenedSideBox(
            icon: Icons.info,
          )
        ]));

    Widget openedBoxes = Column(
      children: [
        GestureDetector(
            onTap: () {
              if (Provider.of<Data>(context, listen: false).isOpened == false) {
                isClicked = true;
              } else {
                isClicked = false;
              }
              Provider.of<Data>(context, listen: false)
                  .changeIsOpened(isClicked);
            },
            child: const OpenedSideBox(
              icon: Icons.home,
              iconColor: Colors.white,
              boxColor: Color(0xFF4200CF),
              title: "Home",
              textColor: Colors.white,
            )),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ArticleListScreen()));
          },
          child: const OpenedSideBox(
            icon: Icons.article,
            title: "Articles",
          ),
        ),
        const OpenedSideBox(
          icon: Icons.login,
          title: "Login",
        ),
        const OpenedSideBox(
          title: "Events",
          icon: Icons.event,
        ),
        const OpenedSideBox(
          title: "Gallery",
          icon: Icons.image,
        ),
        const OpenedSideBox(
          title: "About Us",
          icon: Icons.info,
        )
      ],
    );
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      width: providerIsClicked ? width / 2.3 : width / 6,
      height: height,
      padding: EdgeInsets.only(
        top: providerIsClicked ? height / 7.0 : height / 8,
        left: providerIsClicked ? 12 : 8,
        right: providerIsClicked ? 12 : 8,
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          color: Color(0xFF880000)),
      child: providerIsClicked ? openedBoxes : unOpenedBoxes,
    );
  }
}
