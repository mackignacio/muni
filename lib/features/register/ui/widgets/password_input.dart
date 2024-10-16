import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../widgets/index.dart';
import '../../bloc/register_cubit.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return InputField(
          hintText: "Enter your password",
          onChanged: (value) =>
              context.read<RegisterCubit>().passwordChanged(value),
        );
      },
    );
  }
}
