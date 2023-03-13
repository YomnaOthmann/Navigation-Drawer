import 'package:drawer_design/view/widgets/custom_button.dart';
import 'package:drawer_design/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_widget.dart';

class FeedbackScreen extends StatelessWidget {
  FeedbackScreen({super.key});
  final TextEditingController feedbackController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/Feedback.png",
              height: 320,
            ),
            const CustomText(
              text: "Your FeedBack ",
              color: Colors.black,
              fontSize: 28,
              fontFamily: "Ubuntu",
            ),
            const SizedBox(height: 10),
            const Text(
              "Give Your best time for this moment.",
              style: TextStyle(
                wordSpacing: 4,
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            CustomTextField(
              feedbackController: feedbackController,
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 15),
            CustomButton(onPressed: () {
              feedbackController.clear();
            })
          ],
        ),
      ),
    );
  }
}
