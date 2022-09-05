import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';

class NewTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool enabled;
  final int? maxLength ;
  final TextAlign? textAlign;
  final TextInputType keyboardType;
  const NewTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.maxLength,
    this.textAlign,

    this.enabled = true
  }) : super(key: key);

  @override
  State<NewTextField> createState() => _NewTextFieldState();
}

class _NewTextFieldState extends State<NewTextField> {
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
        focusColor: ConstantColors.welcome_sign_up_border_color,
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 1)),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: ConstantColors.welcome_sign_up_text_color),
        ),
        labelText: widget.labelText,
      ),
    );
  }
}
