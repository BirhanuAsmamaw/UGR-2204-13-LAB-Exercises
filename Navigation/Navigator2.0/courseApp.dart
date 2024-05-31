import 'package:flutter/material.dart'; 
import './courses.dart'; 
import './ListScreen.dart'; 
import './DetailsScreen.dart'; 
 
void main() { 
  runApp(courseApp()); 
} 
 
class courseApp extends StatefulWidget { 
  @override 
  State<courseApp> createState() => _CourseAppState(); 
} 
 
class _CourseAppState extends State<courseApp> { 
  Course? _selectedCourse; 
 
  List<Course> courses = [ 
    Course( 
        code: "SiTE-001", 
        title: "Introduction To Programming", 
        description: "Computer Organization, Architecture, Programming"), 
    Course( 
        code: "SiTE-002", 
        title: "Discrete Mathematics", 
        description: "Math is fun"), 
    Course( 
        code: "SiTE-003", 
        title: "Mobile Programming", 
        description: "Mobile is not so fun"), 
  ]; 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: Navigator( 
        pages: [ 
          MaterialPage( 
            key: const ValueKey('CourseListScreen'), 
            child: ListScreen( 
              courses: courses, 
              onTapped: _tabHandler, 
            ), 
          ), 
          if (_selectedCourse != null) 
            MaterialPage( 
              key: ValueKey(_selectedCourse), 
              child: DetailsScreen( 
                course: _selectedCourse!, 
              ), 
            ) 
        ], 
        onPopPage: (route, result) { 
          if (!route.didPop(result)) { 
            return false; 
          } 
          setState(() { 
            _selectedCourse = null; 
          }); 
          return true; 
        }, 
      ), 
    ); 
  } 
 
  void _tabHandler(Course course) { 
    setState(() { 
      _selectedCourse = course; 
    }); 
  } 
}