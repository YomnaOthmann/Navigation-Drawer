import 'package:drawer_design/view/screens/feedback_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({super.key});
  GlobalKey<SliderDrawerState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.maxFinite, 70),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Text("Drawer"),
        ),
      ),
      body: FeedbackScreen(),
      drawer: Drawer(),
    );
  }
}
// backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         foregroundColor: Colors.black,
//         systemOverlayStyle: const SystemUiOverlayStyle(
//           statusBarColor: Colors.white,
//           statusBarIconBrightness: Brightness.dark,
//         ),
//       ),
