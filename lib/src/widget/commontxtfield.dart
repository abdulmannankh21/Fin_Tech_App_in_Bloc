import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextfromField extends StatefulWidget {
  final String txt;
  final IconData icn;
  final bool readOnly;
  final TextEditingController? ctr;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  const CommonTextfromField({
    Key? key,
    required this.txt,
    required this.icn,
    this.ctr,
    this.inputFormatters,
    this.keyboardType,
    this.readOnly = false,
  }) : super(key: key);

  @override
  _CommonTextfromFieldState createState() => _CommonTextfromFieldState();
}

class _CommonTextfromFieldState extends State<CommonTextfromField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.grey[200],
      ),
      child: TextFormField(
        readOnly: widget.readOnly,
        autovalidateMode: AutovalidateMode.always,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.black45),
        controller: widget.ctr,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icn,
            color: Colors.black45,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(top: 16),
          hintText: widget.txt,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.black45),
        ),
      ),
    );
  }
}
