import 'package:flutter/material.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';

class BottomContain extends StatelessWidget {
  final IconData icon;
  final String? title;
  final String? subTitle;
  final int maxLines;
  const BottomContain({
    Key? key,
    required this.icon,
    this.title,
    this.subTitle,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: ConstantColors.primaryCyan,
          ),
          title: Text(
            title ?? '',
            maxLines: 2,
          ),
          trailing: Container(
            width: _size.width * 0.3,
            child: Text(
              subTitle?.capitalize() ?? ' - ',
              maxLines: maxLines,
              style: const TextStyle(
                color: ConstantColors.primaryCyan,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 20.0),
          child: Divider(
            thickness: 1.0,
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
