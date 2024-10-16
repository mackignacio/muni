import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/index.dart';
import '../../bloc/register_cubit.dart';

class FirstNameInput extends StatelessWidget {
  const FirstNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
      return InputField(
        hintText: "Enter your First Name",
        onChanged: (value) =>
            context.read<RegisterCubit>().firstNameChanged(value),
      );
    });
  }
}
