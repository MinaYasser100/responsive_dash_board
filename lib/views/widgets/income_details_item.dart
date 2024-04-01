import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 8,
        height: 8,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xFF064061),
        ),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
