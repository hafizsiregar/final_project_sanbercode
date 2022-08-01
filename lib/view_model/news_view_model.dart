import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:final_project_sanbercode/models/article.dart';
import 'package:get/get.dart';

class NewsViewModel extends GetxController {

  getData() async {
    String baseUrl = 'https://newsapi.org/v2/top-headlines?country=id&apiKey=b4b551f077a84207aea69005e1a2a666';
    final response = await Dio().get(baseUrl);

    if (response.statusCode == 200) {
      try {
        return NewModel.fromJson(response.data);
      } catch (e) {
        Get.snackbar('can\'t get data', e.toString());
      }
    }
  }
}