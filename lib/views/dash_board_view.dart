import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_taplet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFF4EB7F2),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu_sharp,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        modileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTapletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
