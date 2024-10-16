import 'package:flutter/material.dart';

import '../constants/index.dart';

abstract class Button extends StatelessWidget {
  final String text;
  final Function? onPressed;

  const Button({super.key, required this.text, this.onPressed});
}

class GrayButton extends Button {
  const GrayButton({super.key, super.text = "", super.onPressed});

  @override
  build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
        backgroundColor: Constants.gray50,
        minimumSize: const Size.fromHeight(50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: () => {
        if (onPressed != null) {onPressed!()}
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Constants.black,
        ),
      ),
    );
  }
}

class GreenButton extends Button {
  const GreenButton({super.key, super.text = "", super.onPressed});

  @override
  build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
        backgroundColor: Constants.green700,
        minimumSize: const Size.fromHeight(50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: () => {
        if (onPressed != null) {onPressed!()}
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Constants.white,
        ),
      ),
    );
  }
}

class CancelButton extends Button {
  const CancelButton({super.key, super.text = "", super.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
        backgroundColor: Constants.red100,
        minimumSize: const Size.fromHeight(50),
        side: const BorderSide(
          color: Constants.red500,
          width: 2,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: () => {
        if (onPressed != null) {onPressed!()}
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Constants.red500,
        ),
      ),
    );
  }
}

class PrimaryOutlineButton extends Button {
  const PrimaryOutlineButton({super.key, super.text = "", super.onPressed})
      : super();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Constants.white,
        foregroundColor: Constants.white,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
        minimumSize: const Size.fromHeight(50),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Constants.red500),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: () => {
        if (onPressed != null) {onPressed!()}
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Constants.red500,
        ),
      ),
    );
  }
}

class PrimaryButton extends Button {
  const PrimaryButton({super.key, super.text = "", super.onPressed}) : super();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
        backgroundColor: Constants.red500,
        minimumSize: const Size.fromHeight(50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: () => {
        if (onPressed != null) {onPressed!()}
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Constants.white,
        ),
      ),
    );
  }
}
