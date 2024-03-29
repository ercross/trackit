import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  
  static const String routeName = "/searchResult";
  static const String listViewKey = "listView";
  static const String pageTitleKey = "pageTitle";

  ///SearchResultPage takes the widget to display, usually a listView and the page title
  const SearchResultPage();

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final Widget listView = routeArgs[listViewKey];
    final String pageTitle = routeArgs[pageTitleKey];

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: listView),
    );
  }
}