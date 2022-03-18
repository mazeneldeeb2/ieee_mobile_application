import 'package:app/data_model.dart';
import 'package:app/open_side_box.dart';
import 'package:app/side_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideBar extends StatelessWidget {
  bool isOpened = false;
  SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isClicked = Provider.of<Data>(context, listen: false).isOpened;

    return Container(
      padding: const EdgeInsets.only(top: 200, left: 16.0, right: 16.0),
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
      child: Column(
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
              child: Provider.of<Data>(context).isOpened
                  ? OpenedSideBox()
                  : UnOpenedSideBox()),
        ],
      ),
    );
  }
}
