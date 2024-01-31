import 'dart:convert';

import 'package:search_address/core/http/client_http.dart';
import 'package:search_address/core/routes/base_url.dart';
import 'package:search_address/data/datasource/get_categories_datasources/get_categories_datasource.dart';
import 'package:search_address/domain/models/categories_model.dart';

class GetCategoriesDataSourceImpl implements GetCategoriesDataSource {
  final ClientHttp client;

  GetCategoriesDataSourceImpl({required this.client});
  @override
  Future<List<CategoriesModel>> call() async {
    final response = await client.get(
      url: PageRoutes.baseUrl,
      headers: {
        "Accept": 'application/json',
        "Content-Type": 'application/json',
      },
    ).onError(
      (error, stackTrace) {
        throw Exception(
          'Erro ao buscar categorias! ${error.toString()}',
        );
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<CategoriesModel> categories = [];
      print("data $data");
      for (var item in data) {
        categories.add(CategoriesModel.fromJson(item));
      }

      return categories;
    }
    return [];
  }
}
