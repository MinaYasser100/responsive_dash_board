import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/non_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : NonActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
