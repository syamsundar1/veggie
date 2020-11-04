import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final int onionweightcart;
  final int bringalweightcart;
  final int ladiesfingerweightcart;
  final int tamatoweightcart;
  final int potatoweightcart;

  CartScreen(
      {Key key,
      this.onionweightcart,
      this.bringalweightcart,
      this.ladiesfingerweightcart,
      this.potatoweightcart,
      this.tamatoweightcart})
      : super(key: key);
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  _CartScreenState(
      {this.onoinweightcart,
      this.potatoweightcart,
      this.tamatoweightcart,
      this.ladiesfingerweightcart,
      this.brinjalweightcart});

  int onioncount = 0;
  int onoionmrp = 0;
  int onoinweightcart;
  int onion1kg = 105;

  String onionId;
  final db = FirebaseFirestore.instance;

  addoniondata() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection("onion");
    await collectionReference
        .add({'noofitems': onioncount, 'weight': onoinweightcart});
    setState(() {});
  }

  @override
  void initState() {
    FirebaseFirestore.instance;
    Firebase.initializeApp();
    super.initState();
  }

  int potatocout = 0;
  int potatomrp = 0;
  int potatoweightcart = 0;
  int potato1kg = 73;

  int tamatocount = 0;
  int tamatomrp = 0;
  int tamatoweightcart = 0;
  int tamato1kg = 28;

  int ladiesfingercount = 0;
  int ladiesfingermrp = 0;
  int ladiesfingerweightcart = 0;
  int ladiefinger1kg = 31;

  int bringalcount = 0;
  int bringalmrp = 0;
  int brinjalweightcart = 0;
  int bringal1kg = 40;

  int totalmrp = 0;

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
      body: SingleChildScrollView(
        // scrollDirection: Axi,
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(width: 1.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                          fit: BoxFit.cover,
                          height: 150.0,
                          width: 150.0,
                          image: AssetImage("assets/onion.png")),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(Icons.minimize),
                                onPressed: () {
                                  setState(() {
                                    if (onioncount == 0) {
                                      onioncount = 0;
                                      onoionmrp = onion1kg * onioncount;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    } else {
                                      onioncount = onioncount - 1;
                                      onoionmrp = onion1kg * onioncount;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    }
                                  });
                                  addoniondata();
                                }),
                            Text(onioncount.toString()),
                            IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    onioncount = onioncount + 1;
                                    onoionmrp = onion1kg * onioncount;
                                    totalmrp = onoionmrp +
                                        potatomrp +
                                        tamatomrp +
                                        ladiesfingermrp +
                                        bringalmrp;
                                  });
                                  addoniondata();
                                }),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          onoionmrp.toString(),
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(width: 3.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                          fit: BoxFit.cover,
                          height: 150.0,
                          width: 150.0,
                          image: AssetImage("assets/potato.jpg")),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(Icons.minimize),
                                onPressed: () {
                                  setState(() {
                                    if (potatocout <= 0) {
                                      potatocout = 0;
                                      potatomrp = potatocout * potato1kg;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    } else {
                                      potatocout = potatocout - 1;
                                      potatomrp = potatocout * potato1kg;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    }
                                  });
                                }),
                            Text(potatocout.toString()),
                            IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    potatocout = potatocout + 1;
                                    potatomrp = potatocout * potato1kg;
                                    totalmrp = onoionmrp +
                                        potatomrp +
                                        tamatomrp +
                                        ladiesfingermrp +
                                        bringalmrp;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          potatomrp.toString(),
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(width: 3.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                          fit: BoxFit.cover,
                          height: 150.0,
                          width: 150.0,
                          image: AssetImage("assets/tamato.jpg")),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(Icons.minimize),
                                onPressed: () {
                                  setState(() {
                                    if (tamatocount == 0) {
                                      tamatocount = 0;
                                      tamatomrp = tamato1kg * tamatocount;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    } else {
                                      tamatocount = tamatocount - 1;
                                      tamatomrp = tamato1kg * tamatocount;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    }
                                  });
                                }),
                            Text(tamatocount.toString()),
                            IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    tamatocount = tamatocount + 1;
                                    tamatomrp = tamato1kg * tamatocount;
                                    totalmrp = onoionmrp +
                                        potatomrp +
                                        tamatomrp +
                                        ladiesfingermrp +
                                        bringalmrp;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          tamatomrp.toString(),
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(width: 3.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                          fit: BoxFit.cover,
                          height: 150.0,
                          width: 150.0,
                          image: AssetImage("assets/ladiesfinger.jpg")),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(Icons.minimize),
                                onPressed: () {
                                  setState(() {
                                    if (ladiesfingercount == 0) {
                                      ladiesfingercount = 0;
                                      ladiesfingermrp =
                                          ladiesfingercount * ladiefinger1kg;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    } else {
                                      ladiesfingercount = ladiesfingercount - 1;
                                      ladiesfingermrp =
                                          ladiesfingercount * ladiefinger1kg;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    }
                                  });
                                }),
                            Text(ladiesfingercount.toString()),
                            IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    ladiesfingercount = ladiesfingercount + 1;
                                    ladiesfingermrp =
                                        ladiesfingercount * ladiefinger1kg;
                                    totalmrp = onoionmrp +
                                        potatomrp +
                                        tamatomrp +
                                        ladiesfingermrp +
                                        bringalmrp;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ladiesfingermrp.toString(),
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(width: 3.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                          fit: BoxFit.cover,
                          height: 150.0,
                          width: 150.0,
                          image: AssetImage("assets/bringal.jpg")),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(Icons.minimize),
                                onPressed: () {
                                  setState(() {
                                    if (bringalcount == 0) {
                                      bringalcount = 0;
                                      bringalmrp = bringal1kg * bringalcount;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    } else {
                                      bringalcount = bringalcount - 1;
                                      bringalmrp = bringal1kg * bringalcount;
                                      totalmrp = onoionmrp +
                                          potatomrp +
                                          tamatomrp +
                                          ladiesfingermrp +
                                          bringalmrp;
                                    }
                                  });
                                }),
                            Text(bringalcount.toString()),
                            IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    bringalcount = bringalcount + 1;
                                    bringalmrp = bringal1kg * bringalcount;
                                    totalmrp = onoionmrp +
                                        potatomrp +
                                        tamatomrp +
                                        ladiesfingermrp +
                                        bringalmrp;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          bringalmrp.toString(),
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Price : ",
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$totalmrp Rs",
                    style: TextStyle(fontSize: 30.0),
                  )
                ],
              ),
              SizedBox(
                height: 100.0,
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "Buy Now",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
