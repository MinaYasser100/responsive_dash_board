import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List items = [
    const AllExpensesItemModel(
      image: Assets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateSelectIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelected: selectIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateSelectIndex(1);
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelected: selectIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateSelectIndex(2);
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isSelected: selectIndex == 2,
            ),
          ),
        ),
      ],
    );

    // Row(
    //   children: AllExpensesItemListView.items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return Expanded(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //         child: GestureDetector(
    //           onTap: () {
    //             updateSelectIndex(index);
    //           },
    //           child: AllExpensesItem(
    //             itemModel: item,
    //             isSelected: selectIndex == index,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }

  void updateSelectIndex(int index) {
    setState(() {
      selectIndex = index;
    });
  }
}
