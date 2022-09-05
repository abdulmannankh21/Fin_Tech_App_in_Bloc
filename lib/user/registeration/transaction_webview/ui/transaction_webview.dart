import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/user/registeration/example.dart';
import 'package:flutter_app/user/registeration/transaction_webview/cubit/transaction_webview_cubit.dart';
import 'package:flutter_app/user/registeration/verify_email/ui/verify_email.dart';
import 'package:flutter_app/user/registeration/verify_mobile/ui/verify_mobile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../kyc_webview.dart';

class WebViewContainer extends StatefulWidget {
  final email,token,actionType;
  const WebViewContainer({Key? key, this.email,this.token,this.actionType, }) : super(key: key);
  @override
  createState() => _WebViewContainerState();
}
class _WebViewContainerState extends State<WebViewContainer> {

  final _key = UniqueKey();
  String _url = "";
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();




  @override
  void initState() {
    if(widget.actionType=="login")
      _url = "${EndPointURL.baseURL}/api/onboardlogin?email=${widget.email}&token=${widget.token}";
    else
      _url = "${EndPointURL.baseURL}/api/onboard?email=${widget.email}&token=${widget.token}";
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(title : "transaction_password".tr,hideBackButton: true,),
      body: _transactionScreen(_size,_theme,context)

    );
  }


  Widget _transactionScreen(Size _size, ThemeData _theme,BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
              onWebViewCreated: (WebViewController webViewController) {
                webViewController.clearCache();
                _controller.complete(webViewController);
              },
              onProgress: (int progress) {
                print('WebView is loading (progress : $progress%)');
              },
              navigationDelegate: (NavigationRequest request) {
                print('allowing navigation to $request');
                return NavigationDecision.navigate;
              },
              onPageStarted: (String url) {
                print('Page started loading: $url');
              },
              onPageFinished: (String url) {
                print('Page finished loading: $url');
                if(url.contains("verifyemailview") && widget.actionType == "registration"){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyEmail(email: widget.email,token : widget.token,actionType: widget.actionType,)));
                }
                if(url.contains("verifyemailview") && widget.actionType == "login"){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Example(email: widget.email,token : widget.token,actionType: widget.actionType,)));
                }
              },
              gestureNavigationEnabled: true,

              backgroundColor: const Color(0x00000000),
            ),
          ),
        ],
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
                        ? 'favorited'.tr+"$url"
                        : 'unable_to_favorite'.tr,
                  ),
                ),
              );
            },
            child: const Icon(Icons.favorite),
          );
        });
  }

}