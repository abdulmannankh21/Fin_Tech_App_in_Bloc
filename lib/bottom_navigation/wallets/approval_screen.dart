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


class ApprovalWebView extends StatefulWidget {
  final url;
  const ApprovalWebView({Key? key, this.url }) : super(key: key);
  @override
  createState() => _ApprovalWebViewState();
}
class _ApprovalWebViewState extends State<ApprovalWebView> {

  final _key = UniqueKey();
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();






  @override
  Widget build(BuildContext context) {
    print(widget.url);
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        appBar: CustomAppBar(title : "approval".tr,hideBackButton: true,),
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
            initialUrl: widget.url,
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
              if(url.contains("payment-success-paypal")) {
               Navigator.pop(context);
               "success".tr.showSnackBar(context);
              }
              if(url.contains("payment-cancel-paypal")){
                Navigator.pop(context);
                "error".tr.showSnackBar(context);
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