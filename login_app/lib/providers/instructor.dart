import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:convert';


class Instructor with ChangeNotifier {
  final int instructorId;
  final String instructorName;
  final double hourPrice;
  final String imageUrl;
  final int rating;

  Instructor({
    @required this.instructorId,
    @required this.instructorName,
    @required this.hourPrice,
    @required this.imageUrl,
    @required this.rating,
  });

  factory Instructor.fromJson(Map<String, dynamic> json) {
    return Instructor(
      instructorId: json['instructorId'] as int,
    instructorName: json['instructorName'] as String,
    hourPrice: json['hourPrice'] as double,
    imageUrl: json['imageUrl'] as String,
    rating: json['rating'] as int,

    );

  }
}
