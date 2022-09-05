import 'package:flutter/material.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';

class XenioPrimaryButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  final double? height;
  final double? width;
  final Color? color;
  final Color buttonTextColor;
  final Color borderColor;
  final bool isGlassmorphics;
  final double borderRadius;
  final double borderWidth;
  final IconData? leadingIcon;
  XenioPrimaryButton({
    Key? key,
    required this.buttonText,
    this.onTap,
    this.color,
    this.height,
    this.width,
    this.buttonTextColor = Colors.black87,
    this.borderColor = Colors.transparent,
    this.isGlassmorphics = false,
    this.borderRadius = 16.0,
    this.borderWidth = 0.75,
    this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        color: color ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Container(
          decoration: isGlassmorphics
              ? BoxDecoration(
                  border: Border.all(
                    color: borderColor.withAlpha(80),
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: borderColor.withAlpha(100),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  color: color,
                )
              : BoxDecoration(
                  color: color,
                  border: Border.all(
                    width: borderWidth,
                    color: borderColor,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
          alignment: Alignment.center,
          width: width ?? _size.width * 0.8,
          height: height ?? _size.height * 0.06,
          child: leadingIcon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      leadingIcon,
                      color: ConstantColors.primaryCyan,
                      size: 18.0,
                    ),
                    const SizedBox(width: 6.0),
                    Text(
                      buttonText,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: buttonTextColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.75,
                          ),
                    ),
                  ],
                )
              : Text(
                  buttonText,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: buttonTextColor,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.75,
                      ),
                ),
        ),
      ),
    );
  }
}
