import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              const DividerWithLeadThru(
                title: 'Goals for this week',
                remainingTasks: '1/3',
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
              ),
              SizedBox(
                height: displayHeight(context) * .015,
              ),
              const DividerWithLeadThru(
                title: 'My habits',
                remainingTasks: '2/6',
              ),
              SizedBox(
                height: displayHeight(context) * .015,
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
                      const HabitIcon(
                        icon: FontAwesomeIcons.newspaper,
                        color: primaryColorThree,
                        label: 'Reading books',
                        iconAlignment: AlignmentDirectional(-0.2, 0.0),
                        progress: 0.38,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const HabitIcon(
                        icon: Icons.fitness_center,
                        color: Colors.purple,
                        label: 'Sport',
                        iconAlignment: AlignmentDirectional(0.0, 0.0),
                        progress: 0.50,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const HabitIcon(
                        icon: Icons.access_alarm_rounded,
                        color: Colors.green,
                        label: 'Wake up at 6 a.m.',
                        iconAlignment: AlignmentDirectional(0.1, 0.0),
                        progress: 0.63,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const HabitIcon(
                        icon: Icons.check,
                        color: secondaryColorTwo,
                        label: 'Meditation',
                        iconAlignment: AlignmentDirectional(0.0, 0.0),
                        progress: 0.25,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      HabitIcon(
                        icon: Icons.water_drop_outlined,
                        color: Colors.cyan.shade200,
                        label: 'Water',
                        iconAlignment: const AlignmentDirectional(0.0, 0.0),
                        progress: 0.45,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const HabitIcon(
                        icon: Icons.check,
                        color: secondaryColorTwo,
                        label: 'Study English',
                        iconAlignment: AlignmentDirectional(0.0, 0.0),
                        progress: 0.25,
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

class HabitIcon extends StatelessWidget {
  const HabitIcon({
    Key? key,
    required this.icon,
    required this.color,
    required this.label,
    required this.iconAlignment,
    required this.progress,
  }) : super(key: key);

  final IconData? icon;
  final Color? color;
  final String label;
  final AlignmentDirectional iconAlignment;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: iconAlignment,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: color,
                size: 25,
              ),
            ),
            SizedBox(
              height: 65,
              width: 65,
              child: CircularProgressIndicator(
                color: color,
                value: progress,
                backgroundColor: secondaryColorOne,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 75,
          height: 50,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: secondaryColorTwo,
            ),
          ),
        ),
      ],
    );
  }
}

class DividerWithLeadThru extends StatelessWidget {
  const DividerWithLeadThru({
    Key? key,
    required this.title,
    required this.remainingTasks,
  }) : super(key: key);

  final String title;
  final String remainingTasks;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            title,
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
              remainingTasks,
              style: TextStyle(
                fontSize: displayWidth(context) * 0.03,
                color: Colors.white,
              ),
            ),
          )
        ],
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
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: LinearProgressIndicator(
                value: progress,
                color: dotColor,
                backgroundColor: secondaryColorOne,
              ),
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
