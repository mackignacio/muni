import 'package:flutter/material.dart';
import '../../constants/index.dart';
import '../../widgets/index.dart';
import 'ui/profile_options_list.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.gray50,
                    ),
                    child: IconButton(
                      iconSize: 146,
                      icon: const Icon(Icons.image),
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.gray50,
                    ),
                    child: const Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                const ProfileOptionsList(),
                const SizedBox(
                  height: 90,
                ),
                const PrimaryButton(
                  text: "Logout",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
