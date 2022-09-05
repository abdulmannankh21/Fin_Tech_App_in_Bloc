import 'package:flutter/material.dart';
import 'package:flutter_app/src/Language/app_localization.dart';

class CardWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  const CardWidget({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color.withOpacity(0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 25,
              color: color,
            ),
            const SizedBox(height: 10),
            InfiniteText(
              title,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 14,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
