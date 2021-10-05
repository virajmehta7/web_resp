import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget small;
  final Widget medium;
  final Widget large;

  const Responsive(
      {Key? key,
      required this.small,
      required this.medium,
      required this.large})
      : super(key: key);

  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isMedium(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        if (size.maxWidth >= 1200)
          return large;
        else if (size.maxWidth >= 650)
          return medium;
        else
          return small;
      },
    );
  }
}
