import 'package:flutter/material.dart';

import '../../../constants/index.dart';

class ProfileOptions extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const ProfileOptions({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.gray50,
              ),
              child: IconButton(
                iconSize: 30,
                icon: Icon(icon),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Constants.gray200,
                  ),
                )
              ],
            )
          ],
        ),
        IconButton(
          iconSize: 24,
          icon: const Icon(Icons.arrow_right),
          onPressed: () {},
        ),
      ],
    );
  }
}
