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
      alignment: Alignment.bottomCenter,
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
        SizedBox(
          height: displayHeight(context) * 0.145,
          width: displayWidth(context) * 0.2,
          child: FloatingActionButton(
            backgroundColor: primaryColorOne,
            elevation: 5,
            onPressed: () {
              // setState(
              //   () {
              //     clickedCentreFAB =
              //         /!clickedCentreFAB; //to update the animated container
              //   },
              // );
            },
            child: Icon(
              Icons.add,
              size: displayWidth(context) * 0.14,
            ),
          ),
        ),
      ],
    );
  }
}
