import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiHeaders {
  static get token => null;

  @override
  void initState() {
    Future<String?> token = FlutterSecureStorage().read(key: 'jwt');
    print(token);
  }

  static Map<String, String> baseHeader = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true',
    "Access-Control-Allow-Headers": "Access-Control-Allow-Origin, Accept",
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': 'GET,OPTIONS,POST'
  };
  static Map<String, String> tenantHeader = {
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': '*',
    'Authorization': '$token'
  };
}
