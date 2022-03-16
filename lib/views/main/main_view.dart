import 'package:flutter/material.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/screen_dimensions.dart';
import 'package:task_management/views/main/components/custom_nav_bar.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainScreenViewState();
  }
}

class MainScreenViewState extends State<MainScreenView> {
  int selectedIndex = 0;

  void updateDateCardSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: displayHeight(context) * .0005,
              ),
              SizedBox(
                height: displayHeight(context) * .10,
                width: displayWidth(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(0);
                      },
                      child: DateNowCard(
                        day: 'Mon',
                        date: '16',
                        dotted: true,
                        selected: selectedIndex == 0 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(1);
                      },
                      child: DateNowCard(
                        day: 'Tue',
                        date: '17',
                        dotted: false,
                        selected: selectedIndex == 1 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(2);
                      },
                      child: DateNowCard(
                        day: 'Wed',
                        date: '18',
                        dotted: true,
                        selected: selectedIndex == 2 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(3);
                      },
                      child: DateNowCard(
                        day: 'Thu',
                        date: '19',
                        dotted: true,
                        selected: selectedIndex == 3 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(4);
                      },
                      child: DateNowCard(
                        day: 'Fri',
                        date: '20',
                        dotted: false,
                        selected: selectedIndex == 4 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(5);
                      },
                      child: DateNowCard(
                        day: 'Sat',
                        date: '21',
                        dotted: false,
                        selected: selectedIndex == 5 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(6);
                      },
                      child: DateNowCard(
                        day: 'Sun',
                        date: '22',
                        dotted: false,
                        selected: selectedIndex == 6 ? true : false,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: displayHeight(context) * .025,
                  right: displayHeight(context) * .025,
                  bottom: displayHeight(context) * .010,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Goals for this week',
                      style: TextStyle(
                        fontSize: displayWidth(context) * 0.04,
                        fontWeight: FontWeight.w600,
                        color: secondaryColorThree,
                      ),
                    ),
                    Container(
                      height: displayWidth(context) * 0.05,
                      width: displayWidth(context) * 0.08,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(displayHeight(context) * .05),
                        ),
                        color: primaryColorOne,
                      ),
                      child: Text(
                        '1/3',
                        style: TextStyle(
                          fontSize: displayWidth(context) * 0.03,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: displayHeight(context) * .010,
                    left: displayHeight(context) * .025,
                    right: displayHeight(context) * .025,
                    bottom: displayHeight(context) * .010,
                  ),
                  child: Row(
                    children: [
                      const GoalCard(
                        taskCount: '9 tasks',
                        progress: 0.22,
                        dotColor: primaryColorThree,
                        cardTitle: 'Design app',
                        cardDescription:
                            'Finish design of mobile app for online shop',
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GoalCard(
                        taskCount: '',
                        progress: 1.0,
                        dotColor: Colors.purple[900],
                        cardTitle: 'UX Revolution',
                        cardDescription: 'Read a book "UX revolution"',
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const GoalCard(
                        taskCount: '3 tasks',
                        progress: 0.22,
                        dotColor: primaryColorOne,
                        cardTitle: 'Clean kitchen',
                        cardDescription:
                            'Deep clean kitchen + fridge take out all trash',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: const CustomBotNavBar(),
        ),
      ),
    );
  }
}

class GoalCard extends StatelessWidget {
  const GoalCard({
    Key? key,
    required this.dotColor,
    required this.cardTitle,
    required this.cardDescription,
    required this.progress,
    required this.taskCount,
  }) : super(key: key);

  final Color? dotColor;
  final String cardTitle;
  final String cardDescription;
  final double progress;
  final String taskCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * .2,
      width: displayHeight(context) * .18,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(displayHeight(context) * .015),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.3,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: displayHeight(context) * .01,
          right: displayHeight(context) * .01,
          top: displayHeight(context) * .01,
          bottom: displayHeight(context) * .01,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: displayWidth(context) * 0.015,
                  color: dotColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  taskCount,
                  style: const TextStyle(
                    color: secondaryColorTwo,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              cardTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: progress == 1.0
                    ? secondaryColorTwo
                    : secondaryColorFour.withOpacity(.8),
                decoration: progress == 1.0 ? TextDecoration.lineThrough : null,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                cardDescription,
                style: TextStyle(
                  color:
                      progress == 1.0 ? secondaryColorTwo : secondaryColorThree,
                  decoration:
                      progress == 1.0 ? TextDecoration.lineThrough : null,
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            LinearProgressIndicator(
              value: progress,
              color: dotColor,
              backgroundColor: secondaryColorOne,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Progress',
                  style: TextStyle(
                    color: secondaryColorThree,
                  ),
                ),
                Text(
                  (progress * 100).toInt().toString() + '%',
                  style: const TextStyle(
                    color: secondaryColorThree,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DateNowCard extends StatelessWidget {
  const DateNowCard({
    Key? key,
    required this.day,
    required this.date,
    required this.dotted,
    required this.selected,
  }) : super(key: key);

  final String day;
  final String date;
  final bool dotted;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * .07,
      width: displayWidth(context) / 8,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(displayHeight(context) * .01),
        ),
        color: selected ? primaryColorOne : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
                color: selected ? Colors.white : secondaryColorThree,
                fontSize: displayWidth(context) * 0.03,
                fontWeight: FontWeight.normal),
          ),
          Text(
            date,
            style: TextStyle(
              color: selected ? Colors.white : primaryColorOne,
              fontSize: displayWidth(context) * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.circle,
            size: displayWidth(context) * 0.012,
            color: (dotted && selected)
                ? Colors.white
                : (dotted && !selected)
                    ? primaryColorOne
                    : (!dotted && selected)
                        ? Colors.transparent
                        : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
