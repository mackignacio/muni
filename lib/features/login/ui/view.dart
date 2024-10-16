import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/index.dart';
import '../../../routes/index.dart';
import '../bloc/login_cubit.dart';
import 'widgets/google_button.dart';
import 'widgets/login_button.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
      if (state.authenticated!) {
        context.go(Routes.home);
      }
    }, builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
        child: Column(
          children: [
            const LoginHeader(),
            const SizedBox(height: 30),
            const LoginForm(),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go(Routes.forgotPassword);
                    },
                    child: const Text(
                      "Forgot Password?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Constants.red500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const LoginButton(),
            const SizedBox(height: 30),
            const Text(
              "Or Login with",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Constants.gray200,
              ),
            ),
            const SizedBox(height: 30),
            const GoogleButton(),
            const Spacer(),
            RichText(
              text: TextSpan(
                text: 'Don’t have an account? ',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Constants.gray500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.go(Routes.register),
                    text: ' Register Now',
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Constants.red500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
