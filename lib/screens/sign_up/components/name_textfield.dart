import 'package:flutter/material.dart';
import 'package:task_management/constants/strings.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({
    Key? key,
    required TextEditingController name,
  })  : _name = name,
        super(key: key);

  final TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _name,
      enableSuggestions: false,
      autocorrect: false,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: string0166,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
