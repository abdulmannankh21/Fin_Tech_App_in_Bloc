import 'package:flutter/material.dart';
import 'package:flutter_app/src/Language/app_localization.dart';

class CommonBtn extends StatefulWidget {
  final String txt;
  final bool isActive;
  const CommonBtn({Key? key, required this.txt, this.isActive = false})
      : super(key: key);

  @override
  _CommonBtnState createState() => _CommonBtnState();
}

class _CommonBtnState extends State<CommonBtn> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.isActive
              ? Theme.of(context).primaryColor
              : Theme.of(context).primaryColor.withOpacity(0.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(17),
              child: InfiniteText(
                widget.txt,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
