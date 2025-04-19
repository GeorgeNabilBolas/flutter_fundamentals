import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_appbar_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewbuilder extends StatefulWidget {
  const WebViewbuilder({
    super.key,
    required this.url,
  });
  final String url;

  @override
  State<WebViewbuilder> createState() => _WebViewbuilderState();
}

class _WebViewbuilderState extends State<WebViewbuilder> {
  late final WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const NewsAppbarWidget(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: WebViewWidget(controller: controller),
          ),
        ],
      ),
    );
  }
}
