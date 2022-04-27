import 'package:flutter/material.dart';

import 'item_container.dart';

// ignore: must_be_immutable
class IeeeListView extends StatelessWidget {
<<<<<<< HEAD:lib/compenents/list_view.dart
  const IeeeListView({Key? key, required this.items}) : super(key: key);
  final List<dynamic> items;
=======
  const IeeeListView({Key? key, required this.items, required this.nextScreen})
      : super(key: key);
  final List<dynamic>? items;
  final Widget nextScreen;
>>>>>>> b3748e591975fa167a2a5a75e22f6f6ccb70fa8d:lib/compenents/article_list.dart

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.separated(
<<<<<<< HEAD:lib/compenents/list_view.dart
        itemCount: items.length,
        itemBuilder: (context, index) => ItemContainer(
          title: items[index].title,
          imageUrl: items[index].imageUrl,
          date: items[index].date.toString().substring(0, 10),
=======
        itemCount: items!.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => nextScreen));
          },
          child: ItemContainer(
            nextScreen: nextScreen,
            title: items![index].title,
            imageUrl: items![index].imageUrl,
            date: items![index].date,
          ),
>>>>>>> b3748e591975fa167a2a5a75e22f6f6ccb70fa8d:lib/compenents/article_list.dart
        ),
        separatorBuilder: (context, index) => Center(
          child: Container(
            height: 1.0,
            width: 350,
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
