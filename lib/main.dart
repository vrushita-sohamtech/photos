import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photos/Images.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Images(),
    );
  }
}

