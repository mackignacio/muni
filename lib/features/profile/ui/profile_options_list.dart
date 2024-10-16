import 'package:flutter/material.dart';
import 'profile_options.dart';

class ProfileOptionsList extends StatelessWidget {
  const ProfileOptionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileOptions(
          title: "Profile Settings",
          description: "Edit your profile",
          icon: Icons.person,
        ),
        SizedBox(
          height: 10,
        ),
        ProfileOptions(
          title: "Payment Options",
          description: "Edit and add payment options",
          icon: Icons.credit_card,
        ),
        SizedBox(
          height: 10,
        ),
        ProfileOptions(
          title: "Help Center",
          description: "Ask problem of the app",
          icon: Icons.help,
        ),
      ],
    );
  }
}
