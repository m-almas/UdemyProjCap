import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageURL;

  ProductPage(this.title, this.imageURL);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);  
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageURL),
                Container(
                    color: Theme.of(context).accentColor,
                    padding: EdgeInsets.all(10.0),
                    child: Text(title)),
                RaisedButton(
                  child: Text('Delete'),
                  onPressed: () => Navigator.pop(context, true),
                ),
              ]),
        ));
  }
}
