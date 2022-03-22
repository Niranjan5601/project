import '../Model/four_wheeler.dart';
import '../Model/model.dart';

import 'package:http/http.dart' as http;

import '../Model/two_wheeler.dart';

class MainDataService {
  Future<List<MainData>?> getMainData() async {
    var client = http.Client();
    var uri = Uri.parse(
        "https://script.google.com/macros/s/AKfycbyQVEOKkuaHaxzCSOuM3eFPNhwoM-NZdmicU-_kHoywGYN6Y34IyjiJSuJa0E86R7M8/exec?action=getsubcatdata&sname=main");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;

      return mainDataFromJson(json);
    }
  }
}

class TwoWheelerService {
  Future<List<TwoWheeler>?> getTwoWheeler() async {
    var client = http.Client();
    var uri = Uri.parse(
        "https://script.google.com/macros/s/AKfycbywa1VJmI7qJWMbbzUMHIbZJlWM3yqQsI7Yxfc-gqEONTiSokqqz1UzLXbi2rc2cmQ-/exec?action=getsubcatdata&sname=2w");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;

      return twoWheelerFromJson(json);
    }
  }
}

class FourWheelerService {
  Future<List<FourWheeler>?> getFourWheeler() async {
    var client = http.Client();
    var uri = Uri.parse(
        "https://script.google.com/macros/s/AKfycbywa1VJmI7qJWMbbzUMHIbZJlWM3yqQsI7Yxfc-gqEONTiSokqqz1UzLXbi2rc2cmQ-/exec?action=getsubcatdata&sname=4w");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;

      return fourWheelerFromJson(json);
    }
  }
}

