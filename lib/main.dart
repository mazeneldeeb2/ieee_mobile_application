import 'package:app/data/ui_provider.dart';
import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/articles_provider.dart';
import 'data/courses_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UiProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ArticlesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CoursesProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: MyHomePage(),
        ),
      ),
=======
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: Consumer(
          builder: (context, value, child) => MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                  backgroundColor: Colors.black,
                  body: MyHomePage(),
                ),
              )),
>>>>>>> b3748e591975fa167a2a5a75e22f6f6ccb70fa8d
    );
  }
}
