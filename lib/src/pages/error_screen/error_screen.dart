import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/routes_generator.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: generate,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("Something went wrong, please try again"),
        ),
      ),
    );
  }
}
