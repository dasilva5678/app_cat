// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app_cat/domain/models/weight_model.dart';

class BreedsModel {
  WeightModel? weight;
  String? id;
  String? name;
  String? temperament;
  String? origin;
  String? countryCodes;
  String? countryCode;
  String? description;
  String? lifeSpan;
  dynamic indoor;
  dynamic lap;
  String? altNames;
  dynamic adaptability;
  dynamic affectionLevel;
  dynamic childFriendly;
  dynamic dogFriendly;
  dynamic energyLevel;
  dynamic grooming;
  dynamic healthIssues;
  dynamic dynamicelligence;
  dynamic sheddingLevel;
  dynamic socialNeeds;
  dynamic strangerFriendly;
  dynamic vocalisation;
  dynamic experimental;
  dynamic hairless;
  dynamic natural;
  dynamic rare;
  dynamic rex;
  dynamic suppressedTail;
  dynamic shortLegs;
  String? wikipediaUrl;
  dynamic hypoallergenic;
  String? referenceImageId;

  BreedsModel({
    this.weight,
    this.id,
    this.name,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.description,
    this.lifeSpan,
    this.indoor,
    this.lap,
    this.altNames,
    this.adaptability,
    this.affectionLevel,
    this.childFriendly,
    this.dogFriendly,
    this.energyLevel,
    this.grooming,
    this.healthIssues,
    this.dynamicelligence,
    this.sheddingLevel,
    this.socialNeeds,
    this.strangerFriendly,
    this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.wikipediaUrl,
    this.hypoallergenic,
    this.referenceImageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': weight?.toMap(),
      'id': id,
      'name': name,
      'temperament': temperament,
      'origin': origin,
      'countryCodes': countryCodes,
      'countryCode': countryCode,
      'description': description,
      'lifeSpan': lifeSpan,
      'indoor': indoor,
      'lap': lap,
      'altNames': altNames,
      'adaptability': adaptability,
      'affectionLevel': affectionLevel,
      'childFriendly': childFriendly,
      'dogFriendly': dogFriendly,
      'energyLevel': energyLevel,
      'grooming': grooming,
      'healthIssues': healthIssues,
      'dynamicelligence': dynamicelligence,
      'sheddingLevel': sheddingLevel,
      'socialNeeds': socialNeeds,
      'strangerFriendly': strangerFriendly,
      'vocalisation': vocalisation,
      'experimental': experimental,
      'hairless': hairless,
      'natural': natural,
      'rare': rare,
      'rex': rex,
      'suppressedTail': suppressedTail,
      'shortLegs': shortLegs,
      'wikipediaUrl': wikipediaUrl,
      'hypoallergenic': hypoallergenic,
      'referenceImageId': referenceImageId,
    };
  }

  factory BreedsModel.fromMap(dynamic map) {
    return BreedsModel(
      weight: map['weight'] != null ? WeightModel.fromMap(map['weight'] as Map<String,dynamic>) : null,
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      temperament: map['temperament'] != null ? map['temperament'] as String : null,
      origin: map['origin'] != null ? map['origin'] as String : null,
      countryCodes: map['countryCodes'] != null ? map['countryCodes'] as String : null,
      countryCode: map['countryCode'] != null ? map['countryCode'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      lifeSpan: map['lifeSpan'] != null ? map['lifeSpan'] as String : null,
      indoor: map['indoor'] != null ? map['indoor'] as dynamic : null,
      lap: map['lap'] != null ? map['lap'] as dynamic : null,
      altNames: map['altNames'] != null ? map['altNames'] as String : null,
      adaptability: map['adaptability'] != null ? map['adaptability'] as dynamic : null,
      affectionLevel: map['affectionLevel'] != null ? map['affectionLevel'] as dynamic : null,
      childFriendly: map['childFriendly'] != null ? map['childFriendly'] as dynamic : null,
      dogFriendly: map['dogFriendly'] != null ? map['dogFriendly'] as dynamic : null,
      energyLevel: map['energyLevel'] != null ? map['energyLevel'] as dynamic : null,
      grooming: map['grooming'] != null ? map['grooming'] as dynamic : null,
      healthIssues: map['healthIssues'] != null ? map['healthIssues'] as dynamic : null,
      dynamicelligence: map['dynamicelligence'] != null ? map['dynamicelligence'] as dynamic : null,
      sheddingLevel: map['sheddingLevel'] != null ? map['sheddingLevel'] as dynamic : null,
      socialNeeds: map['socialNeeds'] != null ? map['socialNeeds'] as dynamic : null,
      strangerFriendly: map['strangerFriendly'] != null ? map['strangerFriendly'] as dynamic : null,
      vocalisation: map['vocalisation'] != null ? map['vocalisation'] as dynamic : null,
      experimental: map['experimental'] != null ? map['experimental'] as dynamic : null,
      hairless: map['hairless'] != null ? map['hairless'] as dynamic : null,
      natural: map['natural'] != null ? map['natural'] as dynamic : null,
      rare: map['rare'] != null ? map['rare'] as dynamic : null,
      rex: map['rex'] != null ? map['rex'] as dynamic : null,
      suppressedTail: map['suppressedTail'] != null ? map['suppressedTail'] as dynamic : null,
      shortLegs: map['shortLegs'] != null ? map['shortLegs'] as dynamic : null,
      wikipediaUrl: map['wikipediaUrl'] != null ? map['wikipediaUrl'] as String : null,
      hypoallergenic: map['hypoallergenic'] != null ? map['hypoallergenic'] as dynamic : null,
      referenceImageId: map['referenceImageId'] != null ? map['referenceImageId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BreedsModel.fromJson(dynamic source) => BreedsModel.fromMap(source);
}
