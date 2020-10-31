import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'GrenzeGotisch',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}
