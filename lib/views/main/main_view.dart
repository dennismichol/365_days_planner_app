import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/screen_dimensions.dart';
import 'package:task_management/constants/strings.dart';
import 'package:task_management/views/main/components/custom_nav_bar.dart';
import 'package:task_management/views/main/components/date_now_card.dart';
import 'package:task_management/views/main/components/divider_with_leadthru.dart';
import 'package:task_management/views/main/components/goals_card.dart';
import 'package:task_management/views/main/components/habits_card.dart';
import 'package:task_management/views/main/components/tasks_card.dart';
import 'dart:developer' as devtools show log;

class MainScreenView extends StatefulWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainScreenViewState();
  }
}

class MainScreenViewState extends State<MainScreenView> {
  var dateNow = DateTime.now();
  String dayToday = DateFormat('EEEE').format(DateTime.now()).toString();
  String weekday = DateFormat('d').format(DateTime.now()).toString();
  int selectedIndex = 0;
  bool value = false;

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
                        day: string0401.substring(0, 3),
                        date: dateNow.weekday == 1
                            ? weekday
                            : (int.parse(weekday) - (dateNow.weekday - 1))
                                .toString(),
                        dotted: true,
                        selected: selectedIndex == 0 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(1);
                      },
                      child: DateNowCard(
                        day: string0402.substring(0, 3),
                        date: dateNow.weekday == 2
                            ? weekday
                            : (int.parse(weekday) - (dateNow.weekday - 2))
                                .toString(),
                        dotted: false,
                        selected: selectedIndex == 1 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(2);
                      },
                      child: DateNowCard(
                        day: string0403.substring(0, 3),
                        date: dateNow.weekday == 3
                            ? weekday
                            : (int.parse(weekday) - (dateNow.weekday - 3))
                                .toString(),
                        dotted: true,
                        selected: selectedIndex == 2 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(3);
                      },
                      child: DateNowCard(
                        day: string0404.substring(0, 3),
                        date: dateNow.weekday == 4
                            ? weekday
                            : (int.parse(weekday) - (dateNow.weekday - 4))
                                .toString(),
                        dotted: true,
                        selected: selectedIndex == 3 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(4);
                      },
                      child: DateNowCard(
                        day: string0405.substring(0, 3),
                        date: dateNow.weekday == 5
                            ? weekday
                            : (int.parse(weekday) - (dateNow.weekday - 5))
                                .toString(),
                        dotted: false,
                        selected: selectedIndex == 4 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(5);
                      },
                      child: DateNowCard(
                        day: string0406.substring(0, 3),
                        date: dateNow.weekday == 6
                            ? weekday
                            : (int.parse(weekday) - (dateNow.weekday - 6))
                                .toString(),
                        dotted: false,
                        selected: selectedIndex == 5 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateDateCardSelection(6);
                      },
                      child: DateNowCard(
                        day: string0407.substring(0, 3),
                        date: dateNow.weekday == 7
                            ? weekday
                            : (int.parse(weekday) - (dateNow.weekday - 7))
                                .toString(),
                        dotted: false,
                        selected: selectedIndex == 6 ? true : false,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const DividerWithLeadThru(
                        title: 'Goals for this week',
                        remainingTasks: '1/3',
                      ),
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
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
                              SizedBox(
                                width: displayHeight(context) * .015,
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
                        physics: const BouncingScrollPhysics(),
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
                              SizedBox(
                                width: displayHeight(context) * .015,
                              ),
                              const HabitIcon(
                                icon: Icons.fitness_center,
                                color: Colors.purple,
                                label: 'Sport',
                                iconAlignment: AlignmentDirectional(0.0, 0.0),
                                progress: 0.50,
                              ),
                              SizedBox(
                                width: displayHeight(context) * .015,
                              ),
                              const HabitIcon(
                                icon: Icons.access_alarm_rounded,
                                color: Colors.green,
                                label: 'Wake up at 6 a.m.',
                                iconAlignment: AlignmentDirectional(0.1, 0.0),
                                progress: 0.63,
                              ),
                              SizedBox(
                                width: displayHeight(context) * .015,
                              ),
                              const HabitIcon(
                                icon: Icons.check,
                                color: secondaryColorTwo,
                                label: 'Meditation',
                                iconAlignment: AlignmentDirectional(0.0, 0.0),
                                progress: 0.25,
                              ),
                              SizedBox(
                                width: displayHeight(context) * .015,
                              ),
                              HabitIcon(
                                icon: Icons.water_drop_outlined,
                                color: Colors.cyan.shade200,
                                label: 'Water',
                                iconAlignment:
                                    const AlignmentDirectional(0.0, 0.0),
                                progress: 0.45,
                              ),
                              SizedBox(
                                width: displayHeight(context) * .015,
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
                      ),
                      SizedBox(
                        height: displayHeight(context) * .001,
                      ),
                      const DividerWithLeadThru(
                        title: 'Tasks for today',
                        remainingTasks: '2/5',
                      ),
                      SizedBox(
                        height: displayHeight(context) * .015,
                      ),
                      const Tasks(
                        title: 'Make a prototype',
                        time: '11:00 am',
                        description: 'Make and send to the client',
                        isChecked: true,
                        isNotify: true,
                        isNote: true,
                        isMessage: true,
                        color: primaryColorThree,
                      ),
                      SizedBox(
                        height: displayHeight(context) * .015,
                      ),
                      const Tasks(
                        title: 'Call with the client',
                        time: '1:40 pm',
                        description: 'Discuss design changes',
                        isChecked: false,
                        isNotify: true,
                        isNote: false,
                        isMessage: true,
                        color: primaryColorThree,
                      ),
                      SizedBox(
                        height: displayHeight(context) * .015,
                      ),
                      const Tasks(
                        title: 'Yoga class',
                        time: '6:30 pm',
                        description: 'Attend yoga session at gym',
                        isChecked: false,
                        isNotify: false,
                        isNote: false,
                        isMessage: false,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        height: displayHeight(context) * .015,
                      ),
                      const Tasks(
                        title: 'Clean Kitchen',
                        time: '8:00 pm',
                        description:
                            'Deep clean kitchen + fridge take out all trash',
                        isChecked: true,
                        isNotify: true,
                        isNote: false,
                        isMessage: true,
                        color: primaryColorOne,
                      ),
                      SizedBox(
                        height: displayHeight(context) * .015,
                      ),
                      const Tasks(
                        title: 'Buy plane tickets',
                        time: '11:00 pm',
                        description: 'Buy tickets to Bahamas',
                        isChecked: false,
                        isNotify: true,
                        isNote: false,
                        isMessage: true,
                        color: primaryColorOne,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: const CustomBotNavBar(),
        ),
      ),
    );
  }
}
