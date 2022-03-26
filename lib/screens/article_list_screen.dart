import 'package:app/screens/article_list_view_screen.dart';
import 'package:flutter/material.dart';

import '../compenents/tab.dart';

class ArticleListScreen extends StatelessWidget {
  const ArticleListScreen({Key? key}) : super(key: key);
  TabBar get _tabBar => const TabBar(
        indicatorColor: Color(0xFFBA0C2F),
        tabs: [
          CategoryTab(category: "Category 1"),
          CategoryTab(category: "Category 2"),
          CategoryTab(category: "Category 3"),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: Colors.black,
              child: _tabBar,
            ),
          ),
          elevation: 0,
          leadingWidth: 0,
          centerTitle: false,
          backgroundColor: Colors.black,
          title: Container(
            padding: const EdgeInsets.only(top: 15.0),
            child: const Text(
              "Articles",
              style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFBA0C2F),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: TabBarView(children: [
          ArticleListView(),
          ArticleListView(),
          ArticleListView(),
        ]),
      ),
    );
  }
}
