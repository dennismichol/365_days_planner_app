import 'package:flutter/material.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/strings.dart';
import 'package:task_management/views/sign_up/components/email_textfield.dart';
import 'package:task_management/views/sign_up/components/name_textfield.dart';
import 'package:task_management/views/sign_up/components/or_divider.dart';
import 'package:task_management/views/sign_up/components/sign_in_text_button.dart';
import 'package:task_management/views/sign_up/components/sign_up_button.dart';
import 'package:task_management/views/sign_up/components/sign_up_fb.dart';
import 'package:task_management/views/sign_up/components/sign_up_google.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late final TextEditingController _name;
  late final TextEditingController _email;
  late final TextEditingController _password;
  bool _isObscure = true;

  @override
  void initState() {
    _name = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.blue,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  string0165,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: NameTextField(name: _name),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: EmailTextField(email: _email),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextField(
                controller: _password,
                obscureText: _isObscure,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: string0302,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility),
                    color: _isObscure ? secondaryColorTwo : primaryColorOne,
                  ),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: SignUpButton(
                name: _name,
                email: _email,
                password: _password,
              ),
            ),
            const SignInTextButton(),
            const SizedBox(
              height: 50,
            ),
            const OrDivider(),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: SignUpFacebook(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: SignUpGoogle(),
            ),
          ],
        ),
      ),
    );
  }
}
