import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/user/registeration/verify_email/ui/verify_email.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KYCWebViewContainer extends StatefulWidget {
  final email,token,kycreference,actionType;
  KYCWebViewContainer({Key? key,this.email,this.token,this.kycreference,this.actionType}) : super(key: key);
  @override
  createState() => _KYCWebViewContainerState();
}
class _KYCWebViewContainerState extends State<KYCWebViewContainer> {

  final _key = UniqueKey();
  String _url = "";
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();


  @override
  void initState() {
    _url = "${EndPointURL.baseURL}/api/updatekyc?email=" + widget.email + "&kycreference=" + widget.kycreference + "&token=" + widget.token;
    print(_url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title : "KYC",hideBackButton: true,),
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
                if(url.contains("kyccomplete")){
                  Navigator.pushReplacementNamed(context, ScreenNames.login);
                }
              },
              gestureNavigationEnabled: true,

              backgroundColor: const Color(0x00000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget favoriteButton() {
    return FutureBuilder<WebViewController>(
        future: _controller.future,
        builder: (BuildContext context,
            AsyncSnapshot<WebViewController> controller) {
          return FloatingActionButton(
            onPressed: () async {
              String? url;
              if (controller.hasData) {
                url = (await controller.data!.currentUrl())!;
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    controller.hasData
                        ? 'Favorited $url'
                        : 'Unable to favorite',
                  ),
                ),
              );
            },
            child: const Icon(Icons.favorite),
          );
        });
  }

}