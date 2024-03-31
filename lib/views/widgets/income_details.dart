import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/item_details_model.dart';
import 'package:responsive_dash_board/views/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xFF208CC8),
    ),
    ItemDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xFF4EB7F2),
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xFF064061),
    ),
    ItemDetailsModel(
      title: 'Other',
      value: '22%',
      color: Color(0xFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => IncomeDetailsItem(
        itemDetailsModel: items[index],
      ),
    );
  }
}
