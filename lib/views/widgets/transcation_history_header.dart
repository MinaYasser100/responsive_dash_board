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
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStyles.styleRegular16.copyWith(
              color: const Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
