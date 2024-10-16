import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/index.dart';
import '../../bloc/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      return PrimaryButton(
        text: "Login",
        onPressed: () {
          context.read<LoginCubit>().loginWithCredentials();
        },
      );
    });
  }
}
