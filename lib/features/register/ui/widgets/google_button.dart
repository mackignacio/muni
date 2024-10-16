import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/index.dart';
import '../../bloc/register_cubit.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
      return GestureDetector(
        onTap: () {
          context.read<RegisterCubit>().loginWithGoogle();
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
