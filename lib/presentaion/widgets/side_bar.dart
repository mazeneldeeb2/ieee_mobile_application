import 'package:app/presentaion/widgets/unopened_side_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_model.dart';
import 'open_side_box.dart';

class SideBar extends StatelessWidget {
  bool isOpened = false;
  SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isClicked = Provider.of<Data>(context, listen: false).isOpened;
    Widget unopenedBoxes = Column(
      children: [
        GestureDetector(
            onTap: () {
              if (isClicked == true) {
                isOpened = false;
              } else {
                isOpened = true;
              }
              Provider.of<Data>(context, listen: false)
                  .changeIsOpened(isOpened);
            },
            child: const UnOpenedSideBox(
              Icons.expand,
              color: Color.fromRGBO(80, 0, 166, 1),
            )),
        const UnOpenedSideBox(Icons.home),
        const UnOpenedSideBox(Icons.login),
        const UnOpenedSideBox(Icons.article),
        const UnOpenedSideBox(Icons.browse_gallery),
        const UnOpenedSideBox(Icons.info),
      ],
    );
    Widget openedBoxes = Column(
      children: [
        GestureDetector(
            onTap: () {
              if (isClicked == true) {
                isOpened = false;
              } else {
                isOpened = true;
              }
              Provider.of<Data>(context, listen: false)
                  .changeIsOpened(isOpened);
            },
            child: const OpenedSideBox(
              icon: Icons.home,
              title: "Home",
            )),
        const OpenedSideBox(icon: Icons.abc, title: "title"),
        const OpenedSideBox(icon: Icons.abc, title: "title"),
        const OpenedSideBox(icon: Icons.abc, title: "title"),
        const OpenedSideBox(icon: Icons.abc, title: "title"),
        const OpenedSideBox(icon: Icons.abc, title: "title"),
      ],
    );
    return Container(
      padding: const EdgeInsets.only(top: 120, left: 16.0, right: 16.0),
      height: MediaQuery.of(context).size.height,
      width: Provider.of<Data>(context).isOpened
          ? MediaQuery.of(context).size.width / 2.3
          : MediaQuery.of(context).size.width / 5.0,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(136, 0, 0, 1),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)),
      ),
      child: Provider.of<Data>(context).isOpened ? openedBoxes : unopenedBoxes,
    );
  }
}
