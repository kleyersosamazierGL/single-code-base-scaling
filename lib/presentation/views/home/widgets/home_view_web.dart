import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/home/widgets/home_large_view.dart';
import 'package:pets_app/presentation/views/home/widgets/home_view_mobile.dart';
import 'package:pets_app/widgets/responsive_widget.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        smallWidget: HomeViewMobile(),
        mediumWidget: HomeViewMobile(),
        largeWidget: HomeLargeView(),
        extraLargeWidget: HomeLargeView());
  }
}
