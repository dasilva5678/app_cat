// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WeightModel {
  String? imperial;
  String? metric;

  WeightModel({
    this.imperial,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imperial': imperial,
      'metric': metric,
    };
  }

  factory WeightModel.fromMap(dynamic map) {
    return WeightModel(
      imperial: map['imperial'] != null ? map['imperial'] as String : null,
      metric: map['metric'] != null ? map['metric'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeightModel.fromJson(dynamic source) => WeightModel.fromMap(source);
}
