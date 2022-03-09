import 'package:flutter/material.dart';
import 'package:task_management/views/introduction_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: '365 DAYS',
      theme:
          ThemeData(primarySwatch: Colors.blue, fontFamily: "SF Pro Display"),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IntroductionPage();
  }
}
