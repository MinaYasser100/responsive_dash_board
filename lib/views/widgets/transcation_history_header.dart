import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TranscationHistroyHeader extends StatelessWidget {
  const TranscationHistroyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStyles.styleRegular16(context).copyWith(
              color: const Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
