import 'package:flutter/material.dart'; 
import './courses.dart'; 
 
class DetailsScreen extends StatelessWidget { 
  final Course course; 
  const DetailsScreen({required this.course}); 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: Text(course.title)), 
      body: Center( 
        child: Column( 
          children: [ 
            Text(course.title), 
            Text(course.code), 
            Text(course.description), 
          ], 
        ), 
      ), 
    ); 
  } 
}