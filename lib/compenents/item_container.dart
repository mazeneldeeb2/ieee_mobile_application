import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    Key? key,
    required this.date,
    required this.imageUrl,
    required this.title,
    required this.id,
    required this.routeName,
  }) : super(key: key);
  final String title;
  final String date;
  final String imageUrl;
  final int id;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName, arguments: id);
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 5,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            margin: const EdgeInsets.only(right: 30.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                errorBuilder: (context, error, stackTrace) => Container(),
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Container(
                margin: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Color(0xFFBA0C2F),
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                date,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
// Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
               
//                 const SizedBox(
//                   height: 20,
//              