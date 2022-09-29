import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final bool? centerTitle;
  final double? height;
  final String? title;
  final IconData? iconData;
  final Function()? backButtonOnTap;
  final bool hideBackButton;
  final SystemUiOverlayStyle systemOverlayStyle;

  final Color backgroundColor;
  final Widget? leading;

  CustomAppBar({
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.actions,
    this.hideBackButton = false,
    this.iconData = Icons.arrow_back_ios,
    this.title,
    this.backButtonOnTap,
    this.height = 55.0,
    this.centerTitle = true,
    this.systemOverlayStyle = SystemUiOverlayStyle.light,
    this.leading,
  })  : preferredSize = Size.fromHeight(height!),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return AppBar(
      elevation: 0.0,
      leading: (!widget.hideBackButton && widget.leading == null)
          ? IconButton(
              onPressed: widget.backButtonOnTap ?? () => Navigator.pop(context),
              icon: Icon(
                widget.iconData,
                color: Colors.grey,
              ),
            )
          : widget.leading,
      automaticallyImplyLeading: false,
      backgroundColor: widget.backgroundColor,
      centerTitle: widget.centerTitle,
      actions: widget.actions == null ? [] : widget.actions,
      title: Text(
        widget.title ?? "",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
      ),
      systemOverlayStyle: widget.systemOverlayStyle,
    );
  }
}
