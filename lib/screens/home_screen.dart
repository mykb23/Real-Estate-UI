import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_ui/api/api_call.dart';
import 'package:real_estate_ui/model/listing_model.dart';
import 'package:real_estate_ui/screens/listing_detail_screen.dart';
import 'package:real_estate_ui/utils/helpers.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _homes = ApiCall().getHomes();

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
                            size: 25.0,
                          ),
                          border: InputBorder.none,
                          hintText: "Search your location",
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton.icon(
                            onPressed: () => print("press"),
                            icon: Icon(
                              Icons.home,
                              size: 30.0,
                            ),
                            label: Text(
                              'Buy',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color.fromRGBO(87, 79, 56, 1),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 16.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                elevation: 8),
                          ),
                          TextButton.icon(
                            onPressed: () => print("press"),
                            icon: Icon(
                              Icons.sell,
                              size: 30.0,
                            ),
                            label: Text(
                              'Rent',
                              style: TextStyle(fontSize: 20.0),
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
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () => print("press"),
                            icon: Icon(
                              Icons.home,
                              size: 30.0,
                            ),
                            label: Text(
                              'Sell',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            style: TextButton.styleFrom(
                              primary: Color.fromRGBO(87, 79, 56, 1),
                              backgroundColor: Color.fromRGBO(232, 231, 228, 1),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
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
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
                      child: RichText(
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 20.0,
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
                      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    vertical: 6.0, horizontal: 10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                elevation: 1),
                          ),
                          // Spacer(),
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
                          // Spacer(),
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
                          // Spacer(),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromRGBO(87, 79, 56, 1),
                              ),
                              children: [
                                TextSpan(text: "Recently "),
                                TextSpan(
                                  text: "Added",
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                          Text("See All")
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: FutureBuilder<List<ListingElement>>(
                                future: _homes,
                                builder: (context,
                                    AsyncSnapshot<List<ListingElement>>
                                        snapshot) {
                                  if (snapshot.hasError)
                                    return Center(
                                      child: Text(snapshot.error.toString()),
                                    );
                                  if (snapshot.hasData) {
                                    return Container(
                                      height: 240,
                                      child: ListView.builder(
                                        physics: ClampingScrollPhysics(),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: snapshot.data!.length,
                                        itemBuilder: (context, index) =>
                                            GestureDetector(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ListingDetailScreen(
                                                id: snapshot.data![index].id,
                                                propStatus: snapshot
                                                    .data![index].propStatus,
                                                sqrt:
                                                    snapshot.data![index].sqft,
                                                price:
                                                    snapshot.data![index].price,
                                                bed: snapshot.data![index].beds,
                                                bath:
                                                    snapshot.data![index].baths,
                                                location: snapshot
                                                    .data![index].location,
                                                img: snapshot
                                                    .data![index].mainImageUrl,
                                                img1: snapshot.data![index].img,
                                                img2:
                                                    snapshot.data![index].img1,
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            width: 170.0,
                                            margin: EdgeInsets.only(right: 6.0),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  30.0,
                                                ),
                                              ),
                                            ),
                                            child: Stack(
                                              children: <Widget>[
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.blueGrey,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        30.0,
                                                      ),
                                                    ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    child: Image(
                                                      image: AssetImage(
                                                          'assets/images/${snapshot.data?[index].mainImageUrl == null ? ' ' : snapshot.data?[index].mainImageUrl}'),
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                  height: 200.0,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10.0, left: 130.0),
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 5.0,
                                                            horizontal: 5.0),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white30,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0)),
                                                    child: Icon(
                                                      Icons.favorite,
                                                      color: Color.fromRGBO(
                                                          87, 79, 56, 1),
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      5.0, 201.0, 5.0, 0.0),
                                                  width: 170.0,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          RichText(
                                                            text: TextSpan(
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        87,
                                                                        79,
                                                                        56,
                                                                        1),
                                                                fontSize: 8.0,
                                                              ),
                                                              children: <
                                                                  InlineSpan>[
                                                                WidgetSpan(
                                                                  child: Icon(
                                                                    Icons
                                                                        .location_on_sharp,
                                                                    size: 12.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      "${snapshot.data![index].location}",
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            "${snapshot.data![index].beds} Beds, ${snapshot.data![index].baths} Baths",
                                                            style: TextStyle(
                                                                fontSize: 8.0),
                                                          )
                                                        ],
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 2.0,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            style: TextStyle(
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      87,
                                                                      79,
                                                                      56,
                                                                      1),
                                                            ),
                                                            children: <
                                                                InlineSpan>[
                                                              TextSpan(
                                                                text: capExtension(
                                                                        "house ${snapshot.data![index].propStatus}")
                                                                    .capitalizeFirstofEach,
                                                              ),
                                                              WidgetSpan(
                                                                child: SizedBox(
                                                                  width: 8.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: convertCurrency(snapshot
                                                                            .data![
                                                                                index]
                                                                            .price),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .red,
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
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromRGBO(87, 79, 56, 1),
                              ),
                              children: [
                                TextSpan(
                                  text: "Recommended",
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                          Text("See All")
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: FutureBuilder<List<ListingElement>>(
                                future: _homes,
                                builder: (context,
                                    AsyncSnapshot<List<ListingElement>>
                                        snapshot) {
                                  if (snapshot.hasError)
                                    return Center(
                                      child: Text(snapshot.error.toString()),
                                    );
                                  if (snapshot.hasData) {
                                    return Container(
                                      height: 240,
                                      child: ListView.builder(
                                        physics: ClampingScrollPhysics(),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: snapshot.data!.length,
                                        itemBuilder: (context, index) =>
                                            GestureDetector(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ListingDetailScreen(
                                                id: snapshot.data![index].id,
                                                propStatus: snapshot
                                                    .data![index].propStatus,
                                                sqrt:
                                                    snapshot.data![index].sqft,
                                                price:
                                                    snapshot.data![index].price,
                                                bed: snapshot.data![index].beds,
                                                bath:
                                                    snapshot.data![index].baths,
                                                location: snapshot
                                                    .data![index].location,
                                                img: snapshot
                                                    .data![index].mainImageUrl,
                                                img1: snapshot.data![index].img,
                                                img2:
                                                    snapshot.data![index].img1,
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            width: 170.0,
                                            margin: EdgeInsets.only(right: 6.0),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  30.0,
                                                ),
                                              ),
                                            ),
                                            child: Stack(
                                              children: <Widget>[
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.blueGrey,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        30.0,
                                                      ),
                                                    ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    child: Image(
                                                      image: AssetImage(
                                                          'assets/images/${snapshot.data?[index].mainImageUrl == null ? ' ' : snapshot.data?[index].mainImageUrl}'),
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                  height: 200.0,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10.0, left: 130.0),
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 5.0,
                                                            horizontal: 5.0),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white30,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0)),
                                                    child: Icon(
                                                      Icons.favorite,
                                                      color: Color.fromRGBO(
                                                          87, 79, 56, 1),
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      5.0, 201.0, 5.0, 0.0),
                                                  width: 170.0,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          RichText(
                                                            text: TextSpan(
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        87,
                                                                        79,
                                                                        56,
                                                                        1),
                                                                fontSize: 8.0,
                                                              ),
                                                              children: <
                                                                  InlineSpan>[
                                                                WidgetSpan(
                                                                  child: Icon(
                                                                    Icons
                                                                        .location_on_sharp,
                                                                    size: 12.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      "${snapshot.data![index].location}",
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            "${snapshot.data![index].beds} Beds, ${snapshot.data![index].baths} Baths",
                                                            style: TextStyle(
                                                                fontSize: 8.0),
                                                          )
                                                        ],
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 2.0,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            style: TextStyle(
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      87,
                                                                      79,
                                                                      56,
                                                                      1),
                                                            ),
                                                            children: <
                                                                InlineSpan>[
                                                              TextSpan(
                                                                text: capExtension(
                                                                        "house ${snapshot.data![index].propStatus}")
                                                                    .capitalizeFirstofEach,
                                                              ),
                                                              WidgetSpan(
                                                                child: SizedBox(
                                                                  width: 8.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: convertCurrency(snapshot
                                                                            .data![
                                                                                index]
                                                                            .price),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .red,
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
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
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
        onPressed: () => {print("Floating button")},
        child: Icon(
          Icons.add_sharp,
          size: 50,
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
