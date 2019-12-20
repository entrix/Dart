import 'dart:convert';
import 'package:http/http.dart' as http;


Future<List<User>> readCandidatesFromTracker() async {
  var response = await http.get(Uri.parse('http://localhost:8000/user/getCandidates'));
  var json = response.body;
  List list = jsonDecode(json);
  List<User> users = List();
  for (var l in list) {
    users.add(User.fromJson(l));
  }
  return users;
}

class User {
  int id;

  String clientType;
  String accountType;

  String firstName;
  String secondName;
  String surName;
  String emailAddr;


  bool agreed;

  Set<String> expertises;

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        clientType = json['clientType'],
//        accountType = json['accountType'],
        firstName = json['firstName'],
        secondName = json['secondName'],
        surName = json['surName'],
        emailAddr = json['emailAddr'],
        agreed = json['agreed'] == null ? true : json['agreed'],
        expertises = Set.from(json['expertises']);

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'clientType': clientType,
        'accountType': accountType,
        'firstName': firstName,
        'secondName': secondName,
        'surName': surName,
        'emailAddr': emailAddr,
        'agreed': agreed,
        'expertises': expertises
      };

  static Set modifySet(Map<String, dynamic> json) {

  }
}