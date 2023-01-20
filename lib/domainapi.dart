
import 'dart:convert';

import 'package:fyxt_maintance/services/Apiservices.dart';
import 'package:http/http.dart' as http;
import 'package:fyxt_maintance/services/domainmodel.dart';

Future<DomainModel?>domain (String email, String password) async {
  // Make a POST request to your server to validate the email and password
  var response = await http.post(Uri.parse(ApiConstants.baseUrl), body: {
    'email': email,
    'password': password
  });
  // Parse the JSON response


  print(response.statusCode);
  print(response.body);
  print("shankarguru...");
  var data = jsonDecode(response.body);
  print(data);
  // Check if the validation was successful
}