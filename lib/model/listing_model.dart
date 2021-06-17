// To parse this JSON data, do
//
//     final listing = listingFromJson(jsonString);

import 'dart:convert';

Listing listingFromJson(String str) => Listing.fromJson(json.decode(str));

String listingToJson(Listing data) => json.encode(data.toJson());

class Listing {
  Listing({
    required this.listings,
  });

  List<ListingElement> listings;

  factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        listings: List<ListingElement>.from(
            json["listings"].map((x) => ListingElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "listings": List<dynamic>.from(listings.map((x) => x.toJson())),
      };
}

class ListingElement {
  ListingElement({
    required this.id,
    required this.propStatus,
    required this.permalink,
    required this.sqft,
    required this.beds,
    required this.baths,
    required this.propType,
    required this.propSubType,
    required this.price,
    required this.location,
    required this.yearBuilt,
    required this.listDate,
    required this.mainImageUrl,
    required this.img,
    required this.img1,
  });

  int id;
  String propStatus;
  String permalink;
  int sqft;
  int beds;
  int baths;
  String propType;
  String propSubType;
  int price;
  String location;
  dynamic yearBuilt;
  DateTime listDate;
  String mainImageUrl;
  String img;
  String img1;

  factory ListingElement.fromJson(Map<String, dynamic> json) => ListingElement(
        id: json["id"],
        propStatus: json["prop_status"],
        permalink: json["permalink"],
        sqft: json["sqft"],
        beds: json["beds"],
        baths: json["baths"],
        propType: json["prop_type"],
        propSubType: json["prop_sub_type"],
        price: json["price"],
        location: json["location"],
        yearBuilt: json["year_built"],
        listDate: DateTime.parse(json["list_date"]),
        mainImageUrl: json["mainImageUrl"],
        img: json["img"],
        img1: json["img1"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "prop_status": propStatus,
        "permalink": permalink,
        "sqft": sqft,
        "beds": beds,
        "baths": baths,
        "prop_type": propType,
        "prop_sub_type": propSubType,
        "price": price,
        "location": location,
        "year_built": yearBuilt,
        "list_date": listDate.toIso8601String(),
        "mainImageUrl": mainImageUrl,
        "img": img,
        "img1": img1,
      };
}
