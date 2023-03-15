import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget(
      {super.key, required this.mobileWidget, required this.webWidget});
  final Widget mobileWidget;
  final Widget webWidget;
  @override
  Widget build(BuildContext context) {
    // TODO: Explain why LayoutBuilder is prefered than a simple
    return LayoutBuilder(builder: (context, constraints) {
      if (kIsWeb) {
        return webWidget;
      } else {
        return mobileWidget;
      }
    });
  }
}
