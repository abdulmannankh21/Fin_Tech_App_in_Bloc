import 'package:flutter/material.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';

class XenioSearch extends StatelessWidget {
  final TextEditingController controller;
  final double? height;
  final double? width;
  final String hintText;
  final Function()? onEditingComplete;
  const XenioSearch({
    Key? key,
    required this.controller,
    this.height,
    this.width,
    this.hintText = "Search for...",
    this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Container(
      height: height ?? _size.height * 0.06,
      width: width ?? _size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: TextFormField(
        onEditingComplete: onEditingComplete,
        textInputAction: TextInputAction.search,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey.withOpacity(0.6),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
          focusColor: ConstantColors.primaryCyan,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: ConstantColors.primaryCyan,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: _theme.textTheme.caption!.copyWith(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
