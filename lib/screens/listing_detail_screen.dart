// import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:real_estate_ui/utils/helpers.dart';

class ListingDetailScreen extends StatelessWidget {
  final id, price, sqrt, propStatus, bed, bath, location, img, img1, img2;

  ListingDetailScreen(
      {this.id,
      this.propStatus,
      this.price,
      this.sqrt,
      this.bed,
      this.bath,
      this.location,
      this.img,
      this.img1,
      this.img2});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [img, img1, img2];
    print(location);
    // final home = ApiCall().getHomeById(id);
    // print(images);
    // print(id);
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      backgroundColor: Color.fromRGBO(230, 229, 229, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 300.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: CarouselSlider.builder(
                        unlimitedMode: true,
                        viewportFraction: 1,
                        slideBuilder: (index) {
                          return Container(
                            child: Image(
                              image:
                                  AssetImage("assets/images/${images[index]}"),
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        slideIndicator: CircularSlideIndicator(
                          padding: EdgeInsets.only(bottom: 32),
                          indicatorBorderColor: Colors.grey,
                          indicatorBackgroundColor: Colors.black,
                          indicatorBorderWidth: 1,
                          alignment: Alignment.bottomCenter,
                          currentIndicatorColor: Colors.white,
                        ),
                        itemCount: images.length,
                        initialPage: 0,
                        enableAutoSlider: true,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Icon(
                                Icons.chevron_left_sharp,
                                size: 25.0,
                                color: Color.fromRGBO(87, 79, 56, 1),
                              )),
                        ),
                        Container(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Icon(
                              Icons.favorite,
                              color: Color.fromRGBO(87, 79, 56, 1),
                              size: 25.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 275.0, left: 270.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(87, 79, 56, 1),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(0, 2))
                        ]),
                    child: Text(
                      convertCurrency(price),
                      style: TextStyle(fontSize: 22.0, color: Colors.white70),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.only(right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        capExtension("house $propStatus").capitalizeFirstofEach,
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(87, 79, 56, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star_rate,
                              color: Color.fromRGBO(87, 79, 56, 1),
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Color.fromRGBO(87, 79, 56, 1),
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Color.fromRGBO(87, 79, 56, 1),
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Color.fromRGBO(87, 79, 56, 1),
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Color.fromRGBO(87, 79, 56, 1),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    "By Vikram Shetti",
                    style: TextStyle(
                        fontSize: 18.0, color: Color.fromRGBO(87, 79, 56, 1)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 10.0),
              height: 100.0,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 243, 243, 1),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FittedBox(
                    child: Column(
                      children: [
                        Icon(Icons.bathtub,
                            size: 70.0, color: Color.fromRGBO(87, 79, 56, 1)),
                        Text("$bath Bath"),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: Column(
                      children: [
                        Icon(Icons.bed,
                            size: 70.0, color: Color.fromRGBO(87, 79, 56, 1)),
                        Text("$bed Bath"),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: Column(
                      children: [
                        Icon(Icons.square_foot,
                            size: 70.0, color: Color.fromRGBO(87, 79, 56, 1)),
                        Text("$sqrt SQ"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Color.fromRGBO(156, 156, 156, 1),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    location,
                    style: TextStyle(
                        fontSize: 19.0,
                        color: Color.fromRGBO(156, 156, 156, 1)),
                  ),
                ],
              ),
            ),
            Container(
              height: 200.0,
              margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Image(
                image: AssetImage("assets/images/house.png"),
                width: 1000.0,
                // height: 200.0,
                // fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    child: Icon(
                      Icons.phone,
                      size: 30.0,
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color.fromRGBO(87, 79, 56, 1),
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      // elevation: 8,
                    ),
                    onPressed: () => print("call"),
                  ),
                  TextButton(
                    child: Icon(
                      Icons.chat_rounded,
                      size: 30.0,
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color.fromRGBO(87, 79, 56, 1),
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      // elevation: 8,
                    ),
                    onPressed: () => print("message"),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color.fromRGBO(87, 79, 56, 1),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 35.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      // elevation: 8,
                    ),
                    // style: ButtonStyle(backgroundColor: Colors.white),
                    onPressed: () => print("Book now"),
                    child: Text(
                      capExtension("book now").capitalizeFirstofEach,
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              // TextButton(onPressed: () => {}, child: Text("data"),),
            )
          ],
        ),
      ),
    );
  }
}
