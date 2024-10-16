import 'package:flutter/material.dart';

import 'email_input.dart';
import 'first_name_input.dart';
import 'last_name_input.dart';
import 'password_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FirstNameInput(),
        SizedBox(height: 15),
        LastNameInput(),
        SizedBox(height: 15),
        EmailInput(),
        SizedBox(height: 15),
        PasswordInput(),
        SizedBox(height: 20),
      ],
    );
  }
}
