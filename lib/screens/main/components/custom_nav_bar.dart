import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/screen_dimensions.dart';

class CustomBotNavBar extends StatefulWidget {
  const CustomBotNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBotNavBar> createState() => _CustomBotNavBarState();
}

class _CustomBotNavBarState extends State<CustomBotNavBar> {
  // bool clickedCentreFAB = false;
  int selectedIndex = 0;

  void updateTabSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomAppBar(
          child: Container(
            height: displayHeight(context) * .101,
            margin: EdgeInsets.only(
              left: displayWidth(context) * 0.030,
              right: displayWidth(context) * 0.030,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    //update the bottom app bar view each time an item is clicked
                    onPressed: () {
                      updateTabSelection(0);
                    },
                    iconSize: displayHeight(context) * 0.035,
                    icon: Icon(
                      Icons.home_outlined,
                      //darken the icon if it is selected or else give it a different color
                      color: selectedIndex == 0
                          ? primaryColorOne
                          : Colors.grey.shade400,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      updateTabSelection(1);
                    },
                    iconSize: displayHeight(context) * 0.03,
                    icon: Icon(
                      FontAwesomeIcons.calendarCheck,
                      color: selectedIndex == 1
                          ? primaryColorOne
                          : Colors.grey.shade400,
                    ),
                  ),
                  //to leave space in between the bottom app bar items and below the FAB
                  SizedBox(
                    height: displayHeight(context) * 0.2,
                    width: displayWidth(context) * 0.2,
                  ),
                  IconButton(
                    onPressed: () {
                      updateTabSelection(2);
                    },
                    iconSize: displayHeight(context) * 0.03,
                    icon: Icon(
                      FontAwesomeIcons.stickyNote,
                      color: selectedIndex == 2
                          ? primaryColorOne
                          : Colors.grey.shade400,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      updateTabSelection(3);
                    },
                    iconSize: displayHeight(context) * 0.035,
                    icon: Icon(
                      Icons.person_outline,
                      color: selectedIndex == 3
                          ? primaryColorOne
                          : Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //to add a space between the FAB and BottomAppBar
          //shape: const CircularNotchedRectangle(),
          //color of the BottomAppBar
          color: Colors.white,
        ),
      ],
    );
  }
}

class CustomRecFAB extends StatelessWidget {
  const CustomRecFAB({
    Key? key,
    required this.color,
    required this.label,
    required this.desc,
    required this.icon,
  }) : super(key: key);

  final Color color;
  final String label;
  final String desc;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context) * 0.80,
      height: displayHeight(context) * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: displayHeight(context) * 0.025,
                  ),
                ),
                const SizedBox(
                  height: 2.5,
                ),
                Text(
                  desc,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: displayHeight(context) * 0.015,
                  ),
                ),
              ],
            ),
            Icon(
              icon,
              color: Colors.white,
              size: displayHeight(context) * 0.035,
            ),
          ],
        ),
      ),
    );
  }
}
