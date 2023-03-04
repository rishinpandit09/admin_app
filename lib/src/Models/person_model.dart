import 'dart:ffi';

class Person {
  final int personId;
  final String firstName;
  final String lastName;
  final String email;
  final String reason;
  final String gateId;
  final DateTime requestTime;
  final bool entryGiven;
  final DateTime entryGivenTime;

  Person(
      {required this.personId,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.reason,
      required this.gateId,
      required this.requestTime,
      required this.entryGiven,
      required this.entryGivenTime});
}
