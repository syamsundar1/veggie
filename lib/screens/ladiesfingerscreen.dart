import 'package:flutter/material.dart';
import 'package:veggie/data/data.dart';
import 'package:veggie/screens/cartscreen.dart';

String ladiesFinger = "Ladies Finger";

class LadiesFingerScreen extends StatefulWidget {
  @override
  _LadiesFingerScreenState createState() => _LadiesFingerScreenState();
}

class _LadiesFingerScreenState extends State<LadiesFingerScreen> {
  List<Weight> _weight = Weight.getWeight();
  List<DropdownMenuItem<Weight>> _dropdownMenuItem;
  Weight _selectedWeight;

  @override
  void initState() {
    _dropdownMenuItem = builddropdownMenuItems(_weight);
    _selectedWeight = _dropdownMenuItem[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Weight>> builddropdownMenuItems(List weights) {
    List<DropdownMenuItem<Weight>> items = List();
    for (Weight weight in weights) {
      items.add(DropdownMenuItem(
        value: weight,
        child: Text(weight.weight.toString()),
      ));
    }
    return items;
  }

  onChangeDropdownItem(Weight seletctedweight) {
    setState(() {
      _selectedWeight = seletctedweight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "assets/ladiesfinger.jpg",
            child: Image(
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 3,
              image: AssetImage("assets/ladiesfinger.jpg"),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            ladiesFinger,
            style: TextStyle(fontSize: 40.0, fontFamily: 'GrenzeGotisch'),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.green),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Select Weight of product(g) : ",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      DropdownButton(
                        elevation: 0,
                        // icon: Icon(Icons.arrow_circle_down_sharp),
                        // iconEnabledColor: Colors.green,
                        autofocus: true,
                        focusColor: Colors.grey,
                        value: _selectedWeight,
                        items: _dropdownMenuItem,
                        onChanged: onChangeDropdownItem,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Add to cart",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
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
