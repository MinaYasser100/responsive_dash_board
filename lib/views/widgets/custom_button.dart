import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgroundColor, required this.textButton});
  final Color? backgroundColor;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () {},
        child: Text(
          textButton,
          style: AppStyles.styleSemiBold18.copyWith(
            color: backgroundColor != null
                ? const Color(0xFF4EB7F2)
                : Colors.white,
          ),
        ),
      ),
    );
  }
}
