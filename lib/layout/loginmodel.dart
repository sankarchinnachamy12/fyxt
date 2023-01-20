class LoginResponseModel {
  final String token;
  final String error;
  var domains ;
  LoginResponseModel({required this.token, required this.error,this.domains});
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    print(json["token"]);
    print(json["domains"]);
    return LoginResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
      domains: json["domains"] != null ? json["domains"] : "",
    );
  }
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({
    required this.email,
    required this.password,
    required String passowrd,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "email": email.trim(),
      "password": password.trim()
    };

    return map;
  }
}


// class LoginResponseModel1 {
//   final String token;
//   final String error;
//   LoginResponseModel1({required this.token, required this.error});
//   factory LoginResponseModel1.fromJson(Map<String, dynamic> json) {
//     print(json["token"]);
//     return LoginResponseModel1(
//       token: json["token"] != null ? json["token"] : "",
//       error: json["error"] != null ? json["error"] : "",
//     );
//   }
// }
//
// class LoginRequestModel1 {
//   String email;
//
//   LoginRequestModel1({
//     required this.email,
//   });
//
//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> map = {
//       "email": email.trim(),
//     };
//
//     return map;
//   }
// }
