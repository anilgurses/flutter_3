import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final String description;

  ProductPage(this.title, this.imageUrl, this.price, this.description);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 60.0,
              ),
              Text(
                'Union Square, San Francisco',
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('|')),
              Text(
                '\$' + price.toString(),
                style: TextStyle(color: Colors.grey),
              ),
            ]),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text(description,textAlign: TextAlign.center,))
          ],
        ),
      ),
    );
  }
}
