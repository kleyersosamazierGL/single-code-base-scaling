import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/home/widgets/home_view_mobile.dart';
import 'package:pets_app/presentation/views/home/widgets/home_view_web.dart';
import 'package:pets_app/widgets/adaptive_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return const AdaptiveLayout(
        mobileWidget: HomeViewMobile(), webWidget: HomeViewWeb());
  }
}
