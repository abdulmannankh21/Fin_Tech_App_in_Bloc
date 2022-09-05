import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';

class XenioTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool enabled;
  final int? maxLength ;
  final TextAlign? textAlign;
  final TextInputType keyboardType;
  const XenioTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.maxLength,
    this.textAlign,

    this.enabled = true
  }) : super(key: key);

  @override
  State<XenioTextField> createState() => _XenioTextFieldState();
}

class _XenioTextFieldState extends State<XenioTextField> {
  @override
  void initState() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return TextFormField(
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
      },
      onFieldSubmitted: (value) {
        FocusScope.of(context).unfocus();
      },
      showCursor: false,
      autofocus: false,
      textAlign: widget.textAlign != null ? widget.textAlign! : TextAlign.start,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      enabled: widget.enabled,
      inputFormatters:[
        LengthLimitingTextInputFormatter(widget.maxLength),
      ],
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
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
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: _textTheme.caption!.copyWith(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          gapPadding: 0.0,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
