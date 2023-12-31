import 'dart:convert';
import 'dart:developer';
import 'package:decora/Components/Model/usermodel.dart';
import 'package:http/http.dart' as http;

class LoginApiHelper {
  LoginApiHelper._();

  static final LoginApiHelper loginApiHelper = LoginApiHelper._();

  Future<bool?> login({required String email, required String password}) async {
    String api =
        "https://decoraevnt.online/api/user?providedPassword=Decora957438";

    try {
      http.Response res = await http.post(
        Uri.parse(api),
        body: {
          'email': email,
          'password': password,
        },
      );

      log("${res.statusCode}");
      log(res.body);

      if (res.statusCode == 200) {
        var decodedData = jsonDecode(res.body);
        List data = decodedData;

        bool isLogin =
            data.any((e) => e['email'] == email && e['password'] == password);

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
