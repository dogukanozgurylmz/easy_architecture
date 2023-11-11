import 'package:easy_architecture/app/core/enums/app_radius.dart';
import 'package:flutter/material.dart';

enum ButtonSize { small, medium, large }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final ButtonSize buttonSize;

  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.buttonSize,
  }) : super(key: key);

  factory AppButton.small({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    required Color backgroundColor,
  }) {
    return AppButton(
      key: key,
      text: text,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      buttonSize: ButtonSize.small,
    );
  }

  factory AppButton.medium({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    required Color backgroundColor,
  }) {
    return AppButton(
      key: key,
      text: text,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      buttonSize: ButtonSize.medium,
    );
  }

  factory AppButton.large({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    required Color backgroundColor,
  }) {
    return AppButton(
      key: key,
      text: text,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      buttonSize: ButtonSize.large,
    );
  }

  double getButtonWidth(BuildContext context) {
    switch (buttonSize) {
      case ButtonSize.small:
        return MediaQuery.of(context).size.width * 0.4;
      case ButtonSize.medium:
        return MediaQuery.of(context).size.width * 0.7;
      case ButtonSize.large:
        return MediaQuery.of(context).size.width;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(getButtonWidth(context), 50),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(AppRadius.xl.value),
        ),
      ),
      child: Text(text),
    );
  }
}
