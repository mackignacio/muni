import 'package:flutter/material.dart';

import '../constants/index.dart';

inputDecoration(String? hintText, Widget? prefixIcon) {
  return InputDecoration(
    filled: true,
    fillColor: Constants.white,
    border: const OutlineInputBorder(
      borderSide: BorderSide(width: 0, style: BorderStyle.none),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    prefixIcon: prefixIcon,
    hintText: hintText,
  );
}

class InputField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Function(String)? onChanged;

  const InputField({
    super.key,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      decoration: inputDecoration(hintText, prefixIcon),
    );
  }
}

class TextArea extends StatelessWidget {
  final String? hintText;
  final Function(String)? onChanged;
  final Widget? prefixIcon;

  const TextArea({
    super.key,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      minLines: 3, //or null
      maxLines: 3, //or null
      decoration: inputDecoration(hintText, prefixIcon),
    );
  }
}
