import 'package:flutter/material.dart';
import 'package:task_management/common/presentation/constants/strings.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required TextEditingController email,
  })  : _email = email,
        super(key: key);

  final TextEditingController _email;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _email,
      enableSuggestions: false,
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: string0301,
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
