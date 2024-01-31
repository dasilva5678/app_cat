import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CategoriesModel {
   int id;
   String name;
  CategoriesModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory CategoriesModel.fromMap(dynamic map) {
    return CategoriesModel(
      id: map['id'] as int == null ? 0 : map['id'] as int,
      name: map['name'] as String == null ? '' : map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriesModel.fromJson(dynamic source) => CategoriesModel.fromMap(source);
}
