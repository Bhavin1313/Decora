// import 'dart:convert';
// import 'dart:developer';
// import 'package:decora/Components/Model/usermodel.dart';
// import 'package:http/http.dart' as http;
//
// class LoginApiHelper {
//   LoginApiHelper._();
//
//   static final LoginApiHelper loginApiHelper = LoginApiHelper._();
//
//   Future<bool?> login({required Users user}) async {
//     String api = "http://myhealth.hiteck-consulting.com/api/login.php";
//
//     http.Response res = await http.get(
//       Uri.parse(api),
//     );
//
//     log("${res.statusCode}");
//     log(res.body);
//     if (res.statusCode == 200) {
//       var decodedData = jsonDecode(res.body);
//       List data = decodedData;
//       bool isLogin = data.any(
//           (e) => e['email'] == user.email && e['password'] == user.password);
//
//       return isLogin;
//     } else {
//       return null;
//     }
//   }
// }

import 'dart:convert';
import 'dart:developer';
import 'package:decora/Components/Model/usermodel.dart';
import 'package:http/http.dart' as http;

class LoginApiHelper {
  LoginApiHelper._();

  static final LoginApiHelper loginApiHelper = LoginApiHelper._();

  Future<bool?> login({required Users user}) async {
    String api = "http://myhealth.hiteck-consulting.com/api/login.php";

    try {
      http.Response res = await http.post(
        Uri.parse(api),
        body: {
          'email': user.email,
          'password': user.password,
        },
      );

      log("${res.statusCode}");
      log(res.body);

      if (res.statusCode == 200) {
        var decodedData = jsonDecode(res.body);
        List data = decodedData;

        bool isLogin = data.any(
            (e) => e['email'] == user.email && e['password'] == user.password);

        return isLogin;
      } else {
        return null;
      }
    } catch (e) {
      log("Error: $e");
      return null;
    }
  }
}
