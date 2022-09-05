import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  final double? height;
  final double? width;
  final bool isActive;
  final Color color;
  final Color? backgroundColor;
  const PrimaryButton({
    Key? key,
    required this.buttonText,
    this.onTap,
    this.isActive = false,
    this.color = Colors.white,
    this.height,
    this.width,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width ?? _size.width * 0.8,
        height: height ?? _size.height * 0.06,
        decoration: BoxDecoration(
          color: isActive
              ? backgroundColor ?? Theme.of(context).primaryColor
              : Theme.of(context).primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: color,
              ),
        ),
      ),
    );
  }
}
