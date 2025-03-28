import 'package:flutter/material.dart';

class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key, required this.title});
  final String title;
  @override
  State<MyLoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<MyLoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Loading..."),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
