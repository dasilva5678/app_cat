import 'dart:convert';

import 'package:search_address/core/http/client_http.dart';
import 'package:search_address/core/routes/base_url.dart';
import 'package:search_address/data/datasource/breeds_datasources/breeds_datasources.dart';
import 'package:search_address/domain/models/breeds_model.dart';

class GetCategoriesDataSourceImpl implements BreedsDataSource {
  final ClientHttp client;

  GetCategoriesDataSourceImpl({required this.client});
  @override
  Future<List<BreedsModel>> call() async {
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
      List<BreedsModel> categories = [];
      print("data $data");
      for (var item in data) {
        categories.add(BreedsModel.fromJson(item));
      }

      return categories;
    }
    return [];
  }
}
