import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final String loadingText;
  const LoadingScreen({Key? key, this.loadingText = 'Loading'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 10.0),
          Text(loadingText),
        ],
      ),
    );
  }
}
