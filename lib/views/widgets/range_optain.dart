import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptain extends StatelessWidget {
  const RangeOptain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xffF1F1F1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Color(0xFF064061),
            size: 37,
          ),
        ],
      ),
    );
  }
}
