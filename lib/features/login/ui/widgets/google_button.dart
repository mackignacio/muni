import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/index.dart';
import '../../bloc/login_cubit.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      return GestureDetector(
        onTap: () {
          context.read<LoginCubit>().loginWithGoogle();
        },
        child: const Text(
          "Continue with Google",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Constants.gray500,
          ),
        ),
      );
    });
  }
}
