import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/index.dart';
import 'bloc/register_cubit.dart';
import 'ui/view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<RegisterCubit>(
        create: (_) => getIt<RegisterCubit>(),
        child: const LoginView(),
      ),
    );
  }
}
