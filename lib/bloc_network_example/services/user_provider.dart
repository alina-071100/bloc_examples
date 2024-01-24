import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_application_1/bloc_network_example/models/user.dart';

class UserProvider {
  Future<List<User>> getUser() async {
    Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final List<dynamic> userJson = (json.decode(response.body));

      return userJson.map((json) {
        return User.fromJson(json as Map<String, dynamic>);
      }).toList();
    } else {
      throw Exception("Error fetching users");
    }
  }
}
