import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/user/registeration/verify_email/ui/verify_email.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FeesWebView extends StatefulWidget {
  final planId;
  FeesWebView({Key? key,this.planId}) : super(key: key);
  @override
  createState() => _FeesWebViewState();
}
class _FeesWebViewState extends State<FeesWebView> {

  final _key = UniqueKey();
  String _url = "";
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();


  @override
  void initState() {
    _url = "${EndPointURL.baseURL}${EndPointURL.feesWebview}" + widget.planId;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title : "fee".tr,hideBackButton: true,),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
              onProgress: (int progress) {
                print('WebView is loading (progress : $progress%)');
              },
              navigationDelegate: (NavigationRequest request) {
                if (request.url.startsWith('https://www.youtube.com/')) {
                  print('blocking navigation to $request}');
                  return NavigationDecision.prevent;
                }
                print('allowing navigation to $request');
                return NavigationDecision.navigate;
              },
              onPageStarted: (String url) {
                print('Page started loading: $url');
              },
              onPageFinished: (String url) {
                print('Page finished loading: $url');
              },
              gestureNavigationEnabled: true,

              backgroundColor: const Color(0x00000000),
            ),
          ),
        ],
      ),
    );
  }

}