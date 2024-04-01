import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transction_model.dart';
import 'package:responsive_dash_board/views/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});
  static const items = [
    TransctionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransctionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    TransctionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransctionItem(transctionModel: e),
          )
          .toList(),
    );
    //   return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) => TransctionItem(
    //       transctionModel: items[index],
    //     ),
    //   );
  }
}
