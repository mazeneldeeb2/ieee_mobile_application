import 'package:app/data_model.dart';
import 'package:app/home_text.dart';
import 'package:app/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: Consumer(
        builder: (context, Data, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 80.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        HomeText(
                          "I E E E",
                          fontWeight: FontWeight.bold,
                        ),
                        HomeText(
                          "S S C S",
                          fontColor: Color.fromRGBO(186, 27, 27, 1),
                          fontWeight: FontWeight.bold,
                        ),
                        HomeText(
                          "A l e x S C",
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        HomeText(
                          "Providing the future electronics engineers",
                          fontColor: Colors.grey,
                          fontSize: 14.0,
                        ),
                        HomeText(
                          "with the knowledge and skills they need.",
                          fontColor: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ],
                    ),
                  ),
                ),
                SideBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
