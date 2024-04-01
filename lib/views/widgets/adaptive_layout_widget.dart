import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.modileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder modileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return modileLayout(context);
      } else if (constraints.maxWidth < 1400) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
