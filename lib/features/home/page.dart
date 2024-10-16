import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/index.dart';

import '../profile/profile.dart';
import 'bloc/home_cubit.dart';
import 'ui/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) {
        return getIt.get<HomeCubit>();
      },
      child: const Scaffold(
        bottomNavigationBar: BottomNavigation(),
        body: HomeView(),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      if (state.currrentIndex == 4) return const Profile();
      return const Profile();
    });
  }
}
