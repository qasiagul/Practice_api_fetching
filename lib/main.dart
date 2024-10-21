import 'package:api_fetching/api_screen.dart';
import 'package:api_fetching/getapi/drop_down_api.dart';
import 'package:api_fetching/postapi/signup_api.dart';
import 'package:api_fetching/postapi/upload_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

  class MyApp extends StatefulWidget {
    const MyApp({super.key});

    @override
    State<MyApp> createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:DropDownApi(),
      );
    }
  }
