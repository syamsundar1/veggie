import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Veggie",
          style: TextStyle(
              fontSize: 35.0,
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
              fontFamily: 'GrenzeGotisch'),
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.food_bank_rounded), onPressed: () {})
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.green)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                suffixIcon: Icon(
                  Icons.close,
                  color: Colors.green,
                ),
                filled: true,
                fillColor: Colors.grey[300],
                hintText: "Search for food",
              ),
            ),
            Column(
              children: [
                Text(
                  'Food Items',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'GrenzeGotisch',
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(width: 1.0, color: Colors.grey)),
                      child: Row(
                        children: [],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
