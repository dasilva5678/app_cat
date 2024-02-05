// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app_cat/domain/models/breeds_model.dart';

class DescriptionCat {
  List<BreedsModel>? breeds;
  String? id;
  String? url;
  dynamic? width;
  dynamic? height;

  DescriptionCat({this.breeds, this.id, this.url, this.width, this.height});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breeds': breeds != null ? breeds!.map((x) => x.toMap()).toList() : null,
      'id': id != null ? id : null,
      'url': url != null ? url : null,
      'width': width != null ? width : null,
      'height': height != null ? height : null,
    };
  }

  factory DescriptionCat.fromMap(dynamic map) {
    return DescriptionCat(
      breeds: map['breeds'] != null
          ? List<BreedsModel>.from(
              (map['breeds'] as List<dynamic>).map<BreedsModel?>(
                (x) => BreedsModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : [],
      id: map['id'] != null ? map['id'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      width: map['width'] != null ? map['width'] as dynamic : null,
      height: map['height'] != null ? map['height'] as dynamic : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DescriptionCat.fromJson(dynamic source) =>
      DescriptionCat.fromMap(source);
}
