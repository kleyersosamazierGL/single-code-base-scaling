import 'package:flutter/widgets.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget(
      {super.key,
      required this.smallWidget,
      required this.mediumWidget,
      required this.largeWidget,
      required this.extraLargeWidget});
  final Widget smallWidget;
  final Widget mediumWidget;
  final Widget largeWidget;
  final Widget extraLargeWidget;
  final _smallSize = 256;
  final _midiumSize = 512;
  final _largeSize = 1024;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final size = MediaQuery.of(context).size;

      if (size.width <= _smallSize) {
        return smallWidget;
      } else if (size.width <= _midiumSize) {
        return mediumWidget;
      } else if (size.width <= _largeSize) {
        return largeWidget;
      } else {
        return extraLargeWidget;
      }
    });
  }
}
