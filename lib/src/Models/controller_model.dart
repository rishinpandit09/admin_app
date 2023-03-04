import 'package:flutter/material.dart';

class Controller {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String designation;

  Controller(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.designation});
  factory Controller.fromJson(Map<String, dynamic> json) {
    return Controller(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        designation: json['designation']);
  }
}
