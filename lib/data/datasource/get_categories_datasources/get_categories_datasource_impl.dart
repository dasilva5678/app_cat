import 'dart:convert';

import 'package:app_cat/core/http/client_http.dart';
import 'package:app_cat/core/routes/base_url.dart';
import 'package:app_cat/data/datasource/get_categories_datasources/get_categories_datasource.dart';
import 'package:app_cat/domain/models/categories_model.dart';

class GetCategoriesDataSourceImpl implements GetCategoriesDataSource {
  final ClientHttp client;

  GetCategoriesDataSourceImpl({required this.client});
  @override
  Future<List<CategoriesModel>> call() async {
    final response = await client.get(
      url: Routes.baseUrl,
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
