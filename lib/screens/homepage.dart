import 'package:flutter/material.dart';
import 'package:veggie/screens/bringalscreen.dart';
import 'package:veggie/screens/cartscreen.dart';
import 'package:veggie/screens/ladiesfingerscreen.dart';
import 'package:veggie/screens/onionscreen.dart';
import 'package:veggie/screens/potatoscreen.dart';
import 'package:veggie/screens/tamatoscreen.dart';

String onion = "Onion";
String potato = "Potato";
String tamato = "Tamato";
String ladiesFinger = "Ladies Finger";
String bringal = "Bringal";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _controller = TextEditingController();

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
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              })
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _controller.clear();
                    });
                  },
                  icon: Icon(Icons.clear),
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
                    Hero(
                      tag: "assets/onion.png",
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnionScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 150.0,
                                    width: 150.0,
                                    image: AssetImage("assets/onion.png")),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      onion,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Price £ : 50 ",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.0),
                                width: 48.0,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: IconButton(
                                  iconSize: 30.0,
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Hero(
                      tag: "assets/potato.jpg",
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PotatoScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 150.0,
                                    width: 150.0,
                                    image: AssetImage("assets/potato.jpg")),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      potato,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Price £ : 100 ",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.0),
                                width: 48.0,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: IconButton(
                                  iconSize: 30.0,
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Hero(
                      tag: "assets/tamato.jpg",
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TamatoScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 150.0,
                                    width: 150.0,
                                    image: AssetImage("assets/tamato.jpg")),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      tamato,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Price £ : 30 ",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.0),
                                width: 48.0,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: IconButton(
                                  iconSize: 30.0,
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Hero(
                      tag: "assets/ladiesfinger.jpg",
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LadiesFingerScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 150.0,
                                    width: 150.0,
                                    image:
                                        AssetImage("assets/ladiesfinger.jpg")),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ladiesFinger,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Price £ : 40 ",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.0),
                                width: 48.0,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: IconButton(
                                  iconSize: 30.0,
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Hero(
                      tag: "assets/bringal.jpg",
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BringalScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 150.0,
                                    width: 150.0,
                                    image: AssetImage("assets/bringal.jpg")),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      bringal,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Price £ : 80 ",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'GrenzeGotisch',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.0),
                                width: 48.0,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: IconButton(
                                  iconSize: 30.0,
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
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
