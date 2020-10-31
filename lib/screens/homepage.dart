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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // AssetImage("potato.jpg")
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
                                  "Onion",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Price £ : 150 ",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("250g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("500g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("750g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("1kg")),
                                //     ),
                                //   ],
                                // ),
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

                                // size: 50.0,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // potato
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(width: 1.0, color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // AssetImage("potato.jpg")
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
                                  "Potato",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Price £ : 150 ",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("250g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("500g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("750g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("1kg")),
                                //     ),
                                //   ],
                                // ),
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

                                // size: 50.0,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // tamato
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(width: 1.0, color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // AssetImage("potato.jpg")
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
                                  "Tamato",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Price £ : 150 ",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("250g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("500g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("750g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("1kg")),
                                //     ),
                                //   ],
                                // ),
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

                                // size: 50.0,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //ladies finger
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(width: 1.0, color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // AssetImage("potato.jpg")
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image(
                                fit: BoxFit.cover,
                                height: 150.0,
                                width: 150.0,
                                image: AssetImage("assets/ladiesfinger.jpg")),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ladies Finger",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Price £ : 150 ",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("250g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("500g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("750g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("1kg")),
                                //     ),
                                //   ],
                                // ),
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

                                // size: 50.0,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(width: 1.0, color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // AssetImage("potato.jpg")
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
                                  "Bringal",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Price £ : 150 ",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'GrenzeGotisch',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("250g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("500g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("750g")),
                                //     ),
                                //     SizedBox(
                                //       width: 10.0,
                                //     ),
                                //     InkWell(
                                //       onTap: () {},
                                //       child: Container(
                                //           padding: EdgeInsets.all(5.0),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(30.0),
                                //             border: Border.all(width: 1.0),
                                //           ),
                                //           child: Text("1kg")),
                                //     ),
                                //   ],
                                // ),
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

                                // size: 50.0,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
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
