import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../layout/header.dart';
import '../layout/loginmodel.dart';
import '../layout/service.dart';
import 'Apiservices.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    print("hello");
    final response = await http.post(Uri.parse(ApiConstants.baseUrl),
        body: requestModel.toJson(), headers: ApiHeaders.baseHeader);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

  Future <List<ServiceResponseModel>?> getServiceType() async {
    try {
      var url = Uri.parse(ApiConstants.forgotpasswordurl);
      print(url);
      var response = await http.post(url, headers: ApiHeaders.tenantHeader);
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 201) {

      }
    } catch (e) {
      (e.toString());
    }
  }

