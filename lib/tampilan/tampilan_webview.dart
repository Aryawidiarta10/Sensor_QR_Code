import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TampilanWeb extends StatelessWidget {
  final String url;

  TampilanWeb(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(url),
        centerTitle: true,
        backgroundColor: Colors.green[500],
        bottom: PreferredSize(
          child: Container(
            color:Colors.green[800],
            height: 4.0,
          ),
          preferredSize: null
        ),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}