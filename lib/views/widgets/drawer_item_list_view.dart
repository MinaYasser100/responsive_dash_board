import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesCategory2),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesConvertCard),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistic),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    const DrawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
