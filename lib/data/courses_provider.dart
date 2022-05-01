import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'course.dart';

class CoursesProvider with ChangeNotifier {
  List<Course> _courses = [];
  bool _emptyCourses = true;
  bool get emptyCourses {
    return _emptyCourses;
  }

  static const String coursesApi =
      'https://ieeeswalexsc.herokuapp.com/api/courses';
  final url = Uri.parse(coursesApi);

  List<Course> get courses {
    return _courses;
  }

  Course findCourseById(int id) {
    return _courses.firstWhere((element) => element.id == id);
  }

  Future<void> fetchCourses() async {
    http.Response response;
    Map<String, dynamic> data;
    try {
      response = await http.get(url).timeout(const Duration(seconds: 5));
    } catch (error) {
      rethrow;
    }
    if (json.decode(response.body) != null) {
      data = json.decode(response.body) as Map<String, dynamic>;
      var courses = data['data'];
      List<Course> fetchedCourses = [];
      for (var course in courses) {
        Course fetchedCourse = Course(
          id: course['id'],
          title: course["attributes"]["title"],
          imageUrl: course["attributes"]['image'],
          date: course["attributes"]["publishedAt"],
          courseContent: course["attributes"]["content"],
          courseDescription: course["attributes"]["prerequisites"],
        );
        fetchedCourses.add(fetchedCourse);
        _emptyCourses = false;
        _courses = fetchedCourses;
        notifyListeners();
      }
    }
  }
}
