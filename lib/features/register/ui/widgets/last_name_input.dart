import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/index.dart';
import '../../bloc/register_cubit.dart';

class LastNameInput extends StatelessWidget {
  const LastNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
      return InputField(
        hintText: "Enter your Last Name",
        onChanged: (value) =>
            context.read<RegisterCubit>().lastNameChanged(value),
      );
    });
  }
}
