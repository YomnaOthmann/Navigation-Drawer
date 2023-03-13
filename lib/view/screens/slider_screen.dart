import 'package:drawer_design/view/screens/feedback_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class SliderScreen extends StatelessWidget {
  SliderScreen({super.key});
  GlobalKey<SliderDrawerState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 70),
        child: SliderAppBar(
          isTitleCenter: false,
          drawerIcon: Icon(Icons.arrow_back),
          appBarColor: Colors.white,
          title: Text("Drawer"),
        ),
      ),
      body: SliderDrawer(
        sliderBoxShadow: SliderBoxShadow(),
        slider: Container(
          width: double.maxFinite,
          alignment: AlignmentDirectional.topStart,
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 40, start: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 4,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.asset(
                      "assets/images/profile.jpeg",
                      height: 130,
                      width: 130,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16),
                child: Text(
                  "Chris Hemsworth",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: "Ubuntu"),
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
        child: FeedbackScreen(),
      ),
    );
  }
}
