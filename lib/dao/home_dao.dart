import 'dart:convert';

import 'package:fluttertrip/generated/json/base/json_convert_content.dart';
import 'package:fluttertrip/model/home_dao_entity.dart';
import 'package:fluttertrip/model/home_model.dart';
import 'package:http/http.dart' as http;

const HOME_URL = 'https://www.devio.org/io/flutter_app/json/home_page.json';

class HomeDao {
  static Future<HomeModel> fetch() async {
    final response = await http.get(HOME_URL);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      print("HomeDao 返回结果：$result");
      return HomeModel.fromJson(result);
//      HomeDaoEntity homeDaoEntity=JsonConvert.fromJsonAsT(result);
//      return homeDaoEntity;
    }
  }
}
