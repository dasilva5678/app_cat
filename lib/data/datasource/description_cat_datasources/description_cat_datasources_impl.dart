import 'dart:convert';

import 'package:app_cat/core/http/client_http.dart';
import 'package:app_cat/core/routes/base_url.dart';
import 'package:app_cat/data/datasource/description_cat_datasources/description_cat_datasources.dart';
import 'package:app_cat/domain/models/description_cat_model.dart';

class DescriptionCatDataSourceImpl implements DescriptionCatDataSource {
  final ClientHttp client;

  DescriptionCatDataSourceImpl({required this.client});
  @override
  Future<List<DescriptionCat>> call(int page, int limit) async {
    final response = await client.get(
      url:
          "${Routes.baseUrl}images/search?size=med&mime_types=jpg&format=json&has_breeds=true&order=DESC&page=$page&limit=$limit",
      headers: {
        "Accept": 'application/json',
        "Content-Type": 'application/json',
      },
    ).onError(
      (error, stackTrace) {
        throw Exception(
          'Erro ao buscar dados! ${error.toString()}',
        );
      },
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<DescriptionCat> listDescription = [];

      
      for (var item in data) {
        listDescription.add(DescriptionCat.fromJson(item));
      }

      return listDescription;
    }
    return [];
  }
}
