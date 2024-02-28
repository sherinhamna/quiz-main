import 'package:flutter/material.dart';
import 'package:quiz_app/splashscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
    home:splash(),
      );
  }
}
