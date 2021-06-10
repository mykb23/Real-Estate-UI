import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 229, 229, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 249, 249, 1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Hello! Yash',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color.fromRGBO(87, 79, 56, 1),
                        ),
                      ),
                      leading: Icon(
                        Icons.grid_view_rounded,
                        color: Color.fromRGBO(87, 79, 56, 1),
                        size: 40.0,
                      ),
                      trailing: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/house.png'),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Find your best\nDream Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Color.fromRGBO(87, 79, 56, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(240, 240, 240, 1),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: TextField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        textDirection: TextDirection.ltr,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_sharp,
                            size: 35.0,
                          ),
                          border: InputBorder.none,
                          hintText: "Search your location",
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                      child: Row(
                        children: <Widget>[
                          TextButton.icon(
                            onPressed: () => print("press"),
                            icon: Icon(
                              Icons.home,
                              size: 32.0,
                            ),
                            label: Text(
                              'Buy',
                              style: TextStyle(fontSize: 22.0),
                            ),
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color.fromRGBO(87, 79, 56, 1),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 16.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                elevation: 8),
                          ),
                          Spacer(),
                          TextButton.icon(
                            onPressed: () => print("press"),
                            icon: Icon(
                              Icons.sell,
                              size: 32.0,
                            ),
                            label: Text(
                              'Rent',
                              style: TextStyle(fontSize: 22.0),
                            ),
                            style: TextButton.styleFrom(
                              primary: Color.fromRGBO(87, 79, 56, 1),
                              backgroundColor: Color.fromRGBO(232, 231, 228, 1),
                              // primary: Colors.white,
                              // backgroundColor: Color.fromRGBO(87, 79, 56, 1),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          TextButton.icon(
                            onPressed: () => print("press"),
                            icon: Icon(
                              Icons.home,
                              size: 32.0,
                            ),
                            label: Text(
                              'Sell',
                              style: TextStyle(fontSize: 22.0),
                            ),
                            style: TextButton.styleFrom(
                              primary: Color.fromRGBO(87, 79, 56, 1),
                              backgroundColor: Color.fromRGBO(232, 231, 228, 1),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Expanded(child: Column(children: <W>[],))
              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: RichText(
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color.fromRGBO(87, 79, 56, 1),
                          ),
                          children: [
                            TextSpan(text: "Featured "),
                            TextSpan(
                                text: "Collection",
                                style: TextStyle(fontWeight: FontWeight.w900))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 5.0),
                      child: Row(
                        children: <Widget>[
                          TextButton(
                            onPressed: () => print("press"),
                            child: Text(
                              'Ready to \nMove-In',
                              style: TextStyle(fontSize: 15.0),
                              textAlign: TextAlign.center,
                            ),
                            style: TextButton.styleFrom(
                                primary: Color.fromRGBO(87, 79, 56, 1),
                                backgroundColor:
                                    Color.fromRGBO(249, 249, 249, 1),
                                padding: EdgeInsets.symmetric(
                                    vertical: 6.0, horizontal: 15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                elevation: 1),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () => print("press"),
                            child: Text(
                              'Township',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15.0),
                            ),
                            style: TextButton.styleFrom(
                                primary: Color.fromRGBO(87, 79, 56, 1),
                                backgroundColor:
                                    Color.fromRGBO(249, 249, 249, 1),
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                elevation: 1),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () => print("press"),
                            child: Text(
                              'Luxury',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15.0),
                            ),
                            style: TextButton.styleFrom(
                                primary: Color.fromRGBO(87, 79, 56, 1),
                                backgroundColor:
                                    Color.fromRGBO(249, 249, 249, 1),
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                elevation: 1),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () => print("press"),
                            child: Text(
                              'Affordable\nHomes',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15.0),
                            ),
                            style: TextButton.styleFrom(
                                primary: Color.fromRGBO(87, 79, 56, 1),
                                backgroundColor:
                                    Color.fromRGBO(249, 249, 249, 1),
                                padding: EdgeInsets.symmetric(
                                    vertical: 6.0, horizontal: 15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                elevation: 1),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: RichText(
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color.fromRGBO(87, 79, 56, 1),
                          ),
                          children: [
                            TextSpan(text: "Recently "),
                            TextSpan(
                              text: "Added",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ),
                      trailing: Text("See All"),
                    ),
                    SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  40.0,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        40.0,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset('assets/images/house.png'),
                                  width: 180.0,
                                  height: 200.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 10.0, left: 130.0),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.white30),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color.fromRGBO(87, 79, 56, 1),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      5.0, 202.0, 5.0, 10.0),
                                  width: 180.0,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_sharp,
                                            size: 12.0,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    87, 79, 56, 1),
                                                fontSize: 10.0,
                                              ),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: "Panjim, Cola",
                                                ),
                                                WidgetSpan(
                                                  child: SizedBox(
                                                    width: 25.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: "4 Beds, 3 Baths")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 2.0,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(87, 79, 56, 1),
                                            ),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: "House For Sale",
                                              ),
                                              WidgetSpan(
                                                child: SizedBox(
                                                  width: 8.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "79-82 Lac",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  40.0,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        40.0,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset('assets/images/house.png'),
                                  width: 180.0,
                                  height: 200.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 10.0, left: 130.0),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.white30),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color.fromRGBO(87, 79, 56, 1),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      5.0, 202.0, 5.0, 10.0),
                                  width: 180.0,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_sharp,
                                            size: 12.0,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    87, 79, 56, 1),
                                                fontSize: 10.0,
                                              ),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: "Panjim, Cola",
                                                ),
                                                WidgetSpan(
                                                  child: SizedBox(
                                                    width: 25.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: "4 Beds, 3 Baths")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 2.0,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(87, 79, 56, 1),
                                            ),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: "House For Sale",
                                              ),
                                              WidgetSpan(
                                                child: SizedBox(
                                                  width: 8.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "79-82 Lac",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  40.0,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        40.0,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset('assets/images/house.png'),
                                  width: 180.0,
                                  height: 200.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 10.0, left: 130.0),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.white30),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color.fromRGBO(87, 79, 56, 1),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      5.0, 202.0, 5.0, 10.0),
                                  width: 180.0,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_sharp,
                                            size: 12.0,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    87, 79, 56, 1),
                                                fontSize: 10.0,
                                              ),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: "Panjim, Cola",
                                                ),
                                                WidgetSpan(
                                                  child: SizedBox(
                                                    width: 25.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: "4 Beds, 3 Baths")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 2.0,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(87, 79, 56, 1),
                                            ),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: "House For Sale",
                                              ),
                                              WidgetSpan(
                                                child: SizedBox(
                                                  width: 8.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "79-82 Lac",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "Recommended",
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Color.fromRGBO(87, 79, 56, 1),
                            fontWeight: FontWeight.w900),
                      ),
                      trailing: Text("See All"),
                    ),
                    SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  40.0,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        40.0,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset('assets/images/house.png'),
                                  width: 180.0,
                                  height: 200.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 10.0, left: 130.0),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.white30),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color.fromRGBO(87, 79, 56, 1),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      5.0, 202.0, 5.0, 10.0),
                                  width: 180.0,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_sharp,
                                            size: 12.0,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    87, 79, 56, 1),
                                                fontSize: 10.0,
                                              ),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: "Panjim, Cola",
                                                ),
                                                WidgetSpan(
                                                  child: SizedBox(
                                                    width: 25.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: "4 Beds, 3 Baths")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 2.0,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(87, 79, 56, 1),
                                            ),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: "House For Sale",
                                              ),
                                              WidgetSpan(
                                                child: SizedBox(
                                                  width: 8.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "79-82 Lac",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  40.0,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        40.0,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset('assets/images/house.png'),
                                  width: 180.0,
                                  height: 200.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 10.0, left: 130.0),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.white30),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color.fromRGBO(87, 79, 56, 1),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      5.0, 202.0, 5.0, 10.0),
                                  width: 180.0,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_sharp,
                                            size: 12.0,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    87, 79, 56, 1),
                                                fontSize: 10.0,
                                              ),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: "Panjim, Cola",
                                                ),
                                                WidgetSpan(
                                                  child: SizedBox(
                                                    width: 25.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: "4 Beds, 3 Baths")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 2.0,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(87, 79, 56, 1),
                                            ),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: "House For Sale",
                                              ),
                                              WidgetSpan(
                                                child: SizedBox(
                                                  width: 8.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "79-82 Lac",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  40.0,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        40.0,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset('assets/images/house.png'),
                                  width: 180.0,
                                  height: 200.0,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 10.0, left: 130.0),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.white30),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color.fromRGBO(87, 79, 56, 1),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      5.0, 202.0, 5.0, 10.0),
                                  width: 180.0,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_sharp,
                                            size: 12.0,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    87, 79, 56, 1),
                                                fontSize: 10.0,
                                              ),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: "Panjim, Cola",
                                                ),
                                                WidgetSpan(
                                                  child: SizedBox(
                                                    width: 25.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: "4 Beds, 3 Baths")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 2.0,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromRGBO(87, 79, 56, 1),
                                            ),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: "House For Sale",
                                              ),
                                              WidgetSpan(
                                                child: SizedBox(
                                                  width: 8.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "79-82 Lac",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        // elevation: 0.0,
        onPressed: () => {print("Floating button")},
        child: Icon(
          Icons.add_sharp,
          size: 40,
          color: Color.fromRGBO(87, 79, 56, 1),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(87, 79, 56, 1),
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () => {print("Home button pressed")},
                    icon: Icon(
                      Icons.home_sharp,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () => {print("Favorite button pressed")},
                    icon: Icon(
                      Icons.favorite_sharp,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => {print("Wallet button pressed")},
                    color: Colors.white,
                    icon: Icon(
                      Icons.account_balance_wallet_rounded,
                      size: 40.0,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () => {print("User button pressed")},
                    icon: Icon(
                      Icons.person,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
