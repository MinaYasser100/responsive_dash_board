import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesFrame,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemListView()
        ],
      ),
    );
  }
}
