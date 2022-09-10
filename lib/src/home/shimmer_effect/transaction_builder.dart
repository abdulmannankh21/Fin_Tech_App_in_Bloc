import 'package:flutter/material.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';


class TransactionBuilder extends StatelessWidget {
  final String? leadingText;
  final Widget? leading;
  final String title;
  final String description;
  final String? subTitle;
  final String? helperText;
  final Widget? button;
  final bool isNegative;

  final String amount;
  final Function()? onTap;

  const TransactionBuilder({
    Key? key,
    this.leadingText,
    required this.title,
    required this.description,
    required this.amount,
    this.onTap,
    this.subTitle,
    this.helperText,
    this.leading,
    this.button,
    this.isNegative = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Column(
      children: [
        const SizedBox(height: 4.0),
        GestureDetector(
          onTap: onTap,
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: _theme.cardColor,
                    child: leading == null
                        ? Text(
                            leadingText!.capitalize(),
                            style: const TextStyle(
                              color: ConstantColors.primaryCyan,
                            ),
                          )
                        : leading,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title.capitalize(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: _theme.textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                          color: Colors.white,
                          letterSpacing: 0.75,
                        ),
                      ),
                      Text(
                        description,
                        style: _theme.textTheme.bodyText2!.copyWith(
                          letterSpacing: 0.75,
                          fontSize: 14.0,
                          color: Color(0XFF80E0FF),
                        ),
                      ),
                      if (subTitle != null)
                        Text(
                          subTitle!,
                          style: _theme.textTheme.bodyText2!.copyWith(
                            letterSpacing: 0.75,
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      if (helperText != null)
                        Text(
                          helperText!,
                          style: _theme.textTheme.bodyText2!.copyWith(
                            letterSpacing: 0.75,
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      if (button != null) button!
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 3.0),
                    child: Text(
                      amount,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: (amount.contains('-') || isNegative)
                            ? Colors.white
                            :Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 18.0),

      ],
    );
  }
}
