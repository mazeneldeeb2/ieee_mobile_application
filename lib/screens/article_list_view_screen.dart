// ignore_for_file: dead_code

import 'package:app/compenents/list_view.dart';
import 'package:app/data/articles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../compenents/tab.dart';

// ignore: must_be_immutable
class ArticleListView extends StatefulWidget {
  const ArticleListView({Key? key}) : super(key: key);

  @override
  State<ArticleListView> createState() => _ArticleListViewState();
}

class _ArticleListViewState extends State<ArticleListView> {
  bool _isInit = true;
  bool _isFailed = false;
  bool _isLoading = false;
  TabBar get _tabBar => const TabBar(
        indicatorColor: Color(0xFFBA0C2F),
        tabs: [
          CategoryTab(category: "Category 1"),
          CategoryTab(category: "Category 2"),
          CategoryTab(category: "Category 3"),
        ],
      );

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<ArticlesProvider>(context)
          .fetchArticles()
          .catchError((error) {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("An error has occurred"),
                  content: const Text('Something went wrong'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _isFailed = true;
                        });
                        Navigator.of(context).pop;
                      },
                      child: const Text("Okay"),
                    ),
                  ],
                ));
      }).then(
        (value) => setState(
          (() {
            _isLoading = false;
          }),
        ),
      );
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final articlesProvider = Provider.of<ArticlesProvider>(context);
    final emptyData = articlesProvider.emptyArticles;
    Widget errorWidget({required String errorMessege}) {
      return Container(
        color: Colors.black,
        child: Center(
          child: Text(errorMessege),
        ),
      );
    }

    Widget loadingWidget() {
      return Container(
        color: Colors.black,
        child: const Center(
          child: CircularProgressIndicator(
            color: Color(0xffBA1B1B),
          ),
        ),
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            bottom: _tabBar,
            backgroundColor: Colors.black,
            centerTitle: false,
            title: const Text(
              "Articles",
              style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFBA0C2F),
                  fontWeight: FontWeight.bold),
            )),
        body: TabBarView(
          children: _isFailed
              ? [
                  errorWidget(
                    errorMessege:
                        "Please make sure you are connected to Internet then restart",
                  ),
                  errorWidget(
                    errorMessege:
                        "Please make sure you are connected to Internet then restart",
                  ),
                  errorWidget(
                    errorMessege:
                        "Please make sure you are connected to Internet then restart",
                  ),
                ]
              : emptyData
                  ? [
                      errorWidget(
                          errorMessege:
                              "There is no Articles right now, please try again later."),
                      errorWidget(
                          errorMessege:
                              "There is no Articles right now, please try again later."),
                      errorWidget(
                          errorMessege:
                              "There is no Articles right now, please try again later."),
                    ]
                  : _isLoading
                      ? [
                          loadingWidget(),
                          loadingWidget(),
                          loadingWidget(),
                        ]
                      : [
                          IeeeListView(
                            items: articlesProvider.articles,
                          ),
                          IeeeListView(
                            items: articlesProvider.articles,
                          ),
                          IeeeListView(
                            items: articlesProvider.articles,
                          ),
                        ],
        ),
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
