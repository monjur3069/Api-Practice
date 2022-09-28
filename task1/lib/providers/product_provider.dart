import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../models/searchmodels/SearchModel.dart';

class ProductProvider extends ChangeNotifier {
  SearchModel? searchModel;

  getAllData() {
    _getSearchData();
  }

  void _getSearchData() async {
    final uri = Uri.parse(
        'https://panel.supplyline.network/api/product/search-suggestions/?limit=10&search=ricehttps://panel.supplyline.network/api/product/search-suggestions/?limit=10&search=rice');
    try {
      final response = await get(uri);
      final map = jsonDecode(utf8.decode(response.bodyBytes));
      print(map);
      print(response.statusCode);
      if (response.statusCode == 200) {
        searchModel = SearchModel.fromJson(map);
        print(searchModel!.data!.products!.count!);
        notifyListeners();
      } else {
        print(map['message']);
      }
    } catch (error) {
      rethrow;
    }
  }
}
