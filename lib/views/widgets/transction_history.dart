import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/transcation_history_header.dart';
import 'package:responsive_dash_board/views/widgets/transction_history_list_view.dart';

class TranscationHistory extends StatelessWidget {
  const TranscationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TranscationHistroyHeader(),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransctionHistoryListView(),
      ],
    );
  }
}
