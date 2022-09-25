import 'package:flutter/material.dart';

class CreateGoal extends StatefulWidget {
  const CreateGoal({Key? key}) : super(key: key);

  @override
  State<CreateGoal> createState() => _CreateGoalState();
}

class _CreateGoalState extends State<CreateGoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          ),
          const Text(
            'Create a goal',
          ),
          Container(
            child: Row(),
          ),
        ],
      ),
    );
  }
}
