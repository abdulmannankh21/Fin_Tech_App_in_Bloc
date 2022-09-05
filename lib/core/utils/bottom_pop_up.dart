import 'package:flutter/material.dart';

class BottomPopUp extends StatelessWidget {
  final List<Widget> children;
  final double? height;
  const BottomPopUp({
    Key? key,
    required this.children,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Container(
      height: height ?? _size.height * 0.56,
      decoration: BoxDecoration(
        color: _theme.canvasColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(42.0),
          topRight: Radius.circular(42.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
