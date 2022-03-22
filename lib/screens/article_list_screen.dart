import 'package:app/compenents/article_list.dart';
import 'package:flutter/material.dart';

import '../compenents/tab.dart';

class ArticleListScreen extends StatelessWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: const TabBar(indicatorColor: Color(0xFFBA0C2F), tabs: [
            CategoryTab(category: "Category 1"),
            CategoryTab(category: "Category 2"),
            CategoryTab(category: "Category 3"),
          ]),
          elevation: 0,
          leadingWidth: 0,
          centerTitle: false,
          backgroundColor: Colors.white,
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
// 
// 
// 
// 
// 
// 
// 
// DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           bottom: const TabBar(indicatorColor: Color(0xFFBA0C2F), tabs: [
//             CategoryTab(category: "Category 1"),
//             CategoryTab(category: "Category 2"),
//             CategoryTab(category: "Category 3"),
//           ]),
//           elevation: 0,
//           leadingWidth: 0,
//           centerTitle: false,
//           backgroundColor: Colors.white,
//           title: Container(
//             padding: const EdgeInsets.only(top: 15.0),
//             child: const Text(
//               "Articles",
//               style: TextStyle(
//                   fontSize: 28,
//                   color: Color(0xFFBA0C2F),
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//         body: const TabBarView(children: [
//           ArticleListView(),
//           ArticleListView(),
//           ArticleListView(),
//         ]),
//       ),
//     );
//   }
// }
  