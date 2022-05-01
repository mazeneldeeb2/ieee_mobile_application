import 'package:app/compenents/list_view.dart';
import 'package:app/data/courses_provider.dart';
import 'package:app/screens/course_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CourseListView extends StatefulWidget {
  const CourseListView({Key? key}) : super(key: key);
  static const String routeName = "/courseListViewScreen";

  @override
  State<CourseListView> createState() => _CourseListViewState();
}

class _CourseListViewState extends State<CourseListView> {
  bool _isInit = true;
  bool _isFailed = false;
  bool _isLoading = false;

  Widget errorWidget({required String errorMessege}) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Center(
        child: Text(
          errorMessege,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
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

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<CoursesProvider>(
        context,
      ).fetchCourses().catchError((error) {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("An error has occurred"),
                  content: const Text('Something went wrong'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          _isFailed = true;
                        });
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
    final courses = Provider.of<CoursesProvider>(context).courses;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          "Courses",
          style: TextStyle(
              color: Color(0xFFBA0C2F),
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: _isLoading
          ? loadingWidget()
          : _isFailed
              ? errorWidget(
                  errorMessege:
                      "Please make sure you are connected to Internet then restart")
              : IeeeListView(
                  routeName: CourseDetailsScreen.routeName,
                  items: courses,
                ),
    );
  }
}
