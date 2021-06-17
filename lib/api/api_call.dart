import 'dart:convert';
import 'dart:io';

import 'package:real_estate_ui/model/listing_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class ApiCall {
  Future<List<ListingElement>> getHomes() async {
    try {
      final response = await rootBundle.loadString("assets/data.json");
      final Iterable data = await json.decode(response)["listings"];
      return data.map((e) => ListingElement.fromJson(e)).toList();
    } on SocketException {
      throw ('You are not connected to the internet');
    } catch (e) {
      throw (e.toString());
    }
  }
}
