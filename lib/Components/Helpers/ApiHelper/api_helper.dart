import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../Model/CategoryModel/catagorymodel.dart';

class Api_Helper {
  Api_Helper._();

  static Api_Helper api = Api_Helper._();

  Future<Catagory_Model?> fetchCatagory() async {
    String api =
        "https://decoraevnt.online/api/category?providedPassword=Decora957438";
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      var body = response.body;
      Map<String, dynamic> decodedata = jsonDecode(body);
      Catagory_Model data = Catagory_Model.fromJSON(data: decodedata);

      return data;
    } else {
      return null;
    }
  }
}
