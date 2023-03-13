import 'package:drawer_design/view/screens/feedback_screen.dart';
import 'package:drawer_design/view/widgets/custom_drawer_item.dart';
import 'package:drawer_design/view/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  IconData icon = Icons.menu;

  GlobalKey<SliderDrawerState> drawerKey = GlobalKey<SliderDrawerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
        appBar: SliderAppBar(
          appBarPadding: const EdgeInsets.symmetric(horizontal: 10),
          drawerIcon: IconButton(
            onPressed: () {
              if (drawerKey.currentState!.isDrawerOpen) {
                drawerKey.currentState!.toggle();

                setState(() {
                  icon = Icons.menu;
                });
                drawerKey.currentState!.closeSlider();
              } else {
                drawerKey.currentState!.toggle();
                setState(() {
                  icon = Icons.arrow_back;
                });

                drawerKey.currentState!.openSlider();
              }
            },
            icon: Icon(
              icon,
              size: 30,
            ),
          ),
          appBarColor: Colors.white,
          title: const Text(""),
        ),
        key: drawerKey,
        sliderBoxShadow: SliderBoxShadow(),
        slider: Container(
          width: double.maxFinite,
          alignment: AlignmentDirectional.topStart,
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfilePic(),
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
              const CustomDrawerItem(text: "Home", icon: Icons.home),
              ListTile(
                minVerticalPadding: 20,
                minLeadingWidth: 20,
                horizontalTitleGap: 10,
                leading: Image.asset(
                  "assets/images/customer-service.png",
                  height: 30,
                  width: 30,
                  color: Colors.grey[800],
                ),
                title: Text(
                  "Help",
                  style: TextStyle(color: Colors.grey[800], fontSize: 18),
                ),
              ),
              const CustomDrawerItem(text: "FeedBack", icon: Icons.help),
              const CustomDrawerItem(text: "Invite Friend", icon: Icons.people),
              const CustomDrawerItem(text: "Rate the app", icon: Icons.share),
              const CustomDrawerItem(text: "About Us", icon: Icons.info),
              const SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign Out",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.power_settings_new_outlined,
                          color: Colors.red,
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
        child: FeedbackScreen(),
      ),
    );
  }
}
