import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/constant/constant_data.dart';

class WebViewWidgetBuilder extends StatefulWidget {
  final String? initialUrl;
  final String? appbarTitle;
  final Map<String, String>? initialHeaders;
  const WebViewWidgetBuilder({
    Key? key,
    required this.initialUrl,
    this.initialHeaders,
    required this.appbarTitle,
  }) : super(key: key);

  @override
  _WebViewWidgetBuilderState createState() => _WebViewWidgetBuilderState();
}

class _WebViewWidgetBuilderState extends State<WebViewWidgetBuilder> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    if (Platform.isIOS) WebView.platform = CupertinoWebView();
  }

  Future<bool> _handleBackButton(BuildContext context) async {
    _showMyDialog();
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          Platform.isAndroid ? _handleBackButton(context) : Future.value(true),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              _handleBackButton(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          title: Image.asset(ConstanceData.logo, height: 26.0),
        ),
        body: Stack(
          children: [
            WebView(
              initialUrl: widget.initialUrl,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
              javascriptMode: JavascriptMode.unrestricted,
            ),
            Visibility(
              visible: isLoading,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Do you want to close this page?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: const Text("Yes"),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          ScreenNames.bottomNavigationHome,
                          (Route<dynamic> route) => false,
                        );
                      },
                    ),
                    TextButton(
                      child: const Text("No"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
