import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommonPasswordScreen extends StatefulWidget {
  final TextEditingController controller;
  const CommonPasswordScreen({Key? key, required this.controller})
      : super(key: key);

  @override
  _CommonPasswordScreenState createState() => _CommonPasswordScreenState();
}

class _CommonPasswordScreenState extends State<CommonPasswordScreen> {
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.grey[200],
      ),
      child: TextFormField(
        controller: widget.controller,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.black45),
        obscureText: obsecure,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock, color: Colors.black45),
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                obsecure = !obsecure;
              });
            },
            child: obsecure
                ? const Icon(
                    FontAwesomeIcons.eyeSlash,
                    color: Colors.black45,
                    size: 18,
                  )
                : const Icon(Icons.remove_red_eye, color: Colors.black45),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(top: 16),
          hintText: "Password",
          hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.black45,
              ),
        ),
      ),
    );
  }
}
