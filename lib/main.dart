import 'package:drawer_design/view/screens/feedback_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Signika"),
      debugShowCheckedModeBanner: false,
      home: FeedbackScreen(),
    );
  }
}
