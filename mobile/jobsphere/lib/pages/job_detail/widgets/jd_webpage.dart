import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class JdWebpage extends StatefulWidget {

  final String url;

  const JdWebpage({Key? key, required this.url}) : super(key: key);

  @override
  State<JdWebpage> createState() => _JdWebpageState();
}

class _JdWebpageState extends State<JdWebpage> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webpage'),
      ),
      body: WebView(
        initialUrl: widget.url,
      ),
    );
  }
}
