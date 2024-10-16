import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/index.dart';
import 'bloc/login_cubit.dart';
import 'ui/view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginCubit>(
        create: (_) => getIt<LoginCubit>(),
        child: const LoginView(),
      ),
    );
  }
}
