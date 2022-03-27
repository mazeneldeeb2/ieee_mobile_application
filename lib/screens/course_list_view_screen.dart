import 'package:app/compenents/article_list.dart';
import 'package:app/data/courses.dart';
import 'package:app/screens/course_details.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CourseListView extends StatelessWidget {
  CourseListView({Key? key}) : super(key: key);

  List<Course> courses = [
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/60347810_2271411166433123_1492348981848571904_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=cdbe9c&_nc_ohc=7_0E8EBmgkoAX-SU7vb&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-iERAJSa0yYeMJrNC27dx2bR4bJD2bjUhIm-ZYDLwJNA&oe=625FA90E',
        date: "20/12/2012"),
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/60347810_2271411166433123_1492348981848571904_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=cdbe9c&_nc_ohc=7_0E8EBmgkoAX-SU7vb&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-iERAJSa0yYeMJrNC27dx2bR4bJD2bjUhIm-ZYDLwJNA&oe=625FA90E',
        date: "20/12/2012"),
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/60347810_2271411166433123_1492348981848571904_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=cdbe9c&_nc_ohc=7_0E8EBmgkoAX-SU7vb&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-iERAJSa0yYeMJrNC27dx2bR4bJD2bjUhIm-ZYDLwJNA&oe=625FA90E',
        date: "20/12/2012"),
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/60347810_2271411166433123_1492348981848571904_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=cdbe9c&_nc_ohc=7_0E8EBmgkoAX-SU7vb&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-iERAJSa0yYeMJrNC27dx2bR4bJD2bjUhIm-ZYDLwJNA&oe=625FA90E',
        date: "20/12/2012"),
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/60347810_2271411166433123_1492348981848571904_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=cdbe9c&_nc_ohc=7_0E8EBmgkoAX-SU7vb&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-iERAJSa0yYeMJrNC27dx2bR4bJD2bjUhIm-ZYDLwJNA&oe=625FA90E',
        date: "20/12/2012")
  ];
  @override
  Widget build(BuildContext context) {
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
        body: IeeeListView(
          nextScreen: const CourseDetailsScreen(),
          items: courses,
        ));
  }
}
// Column(children: [
//       Column(
//         children: [
//           Row(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                 child: const Image(
//                   image: NetworkImage(
//                       'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/60347810_2271411166433123_1492348981848571904_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=cdbe9c&_nc_ohc=7_0E8EBmgkoAX-SU7vb&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-iERAJSa0yYeMJrNC27dx2bR4bJD2bjUhIm-ZYDLwJNA&oe=625FA90E'),
//                   width: 400,
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ],
//           ),
//           Container(
//               alignment: Alignment.center,
//               margin: const EdgeInsets.symmetric(vertical: 0),
//               child: Text(
//                 'EMBEDDED ARM',
//                 style: TextStyle(
//                     color: Colors.red[900],
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold),
//               )),
//           Container(
//               margin: const EdgeInsets.symmetric(vertical: 0),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: const Text('View'),
//               ))
//         ],
//       )
//     ])