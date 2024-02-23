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
  dynamic intelligence;
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
    this.intelligence,
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
      'dynamicelligence': intelligence,
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
      weight: map['weight'] != null
          ? WeightModel.fromMap(map['weight'] as Map<String, dynamic>)
          : null,
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      temperament:
          map['temperament'] != null ? map['temperament'] as String : null,
      origin: map['origin'] != null ? map['origin'] as String : null,
      countryCodes:
          map['country_codes'] != null ? map['country_codes'] as String : null,
      countryCode:
          map['country_code'] != null ? map['country_code'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      lifeSpan: map['life_span'] != null ? map['life_span'] as String : null,
      indoor: map['indoor'] != null ? map['indoor'] as dynamic : null,
      lap: map['lap'] != null ? map['lap'] as dynamic : null,
      altNames: map['alt_names'] != null ? map['alt_names'] as String : null,
      adaptability:
          map['adaptability'] != null ? map['adaptability'] as dynamic : null,
      affectionLevel: map['affection_level'] != null
          ? map['affection_level'] as dynamic
          : null,
      childFriendly: map['child_friendly'] != null
          ? map['child_friendly'] as dynamic
          : null,
      dogFriendly:
          map['dog_friendly'] != null ? map['dog_friendly'] as dynamic : null,
      energyLevel:
          map['energy_level'] != null ? map['energy_level'] as dynamic : null,
      grooming: map['grooming'] != null ? map['grooming'] as dynamic : null,
      healthIssues:
          map['health_issues'] != null ? map['health_issues'] as dynamic : null,
      intelligence:
          map['intelligence'] != null ? map['intelligence'] as dynamic : null,
      sheddingLevel: map['shedding_level'] != null
          ? map['shedding_level'] as dynamic
          : null,
      socialNeeds:
          map['social_needs'] != null ? map['social_needs'] as dynamic : null,
      strangerFriendly: map['stranger_friendly'] != null
          ? map['stranger_friendly'] as dynamic
          : null,
      vocalisation:
          map['vocalisation'] != null ? map['vocalisation'] as dynamic : null,
      experimental:
          map['experimental'] != null ? map['experimental'] as dynamic : null,
      hairless: map['hairless'] != null ? map['hairless'] as dynamic : null,
      natural: map['natural'] != null ? map['natural'] as dynamic : null,
      rare: map['rare'] != null ? map['rare'] as dynamic : null,
      rex: map['rex'] != null ? map['rex'] as dynamic : null,
      suppressedTail: map['suppressed_tail'] != null
          ? map['suppressed_tail'] as dynamic
          : null,
      shortLegs:
          map['short_legs'] != null ? map['short_legs'] as dynamic : null,
      wikipediaUrl:
          map['wikipedia_url'] != null ? map['wikipedia_url'] as String : null,
      hypoallergenic: map['hypoallergenic'] != null
          ? map['hypoallergenic'] as dynamic
          : null,
      referenceImageId: map['reference_image_id'] != null
          ? map['reference_image_id'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BreedsModel.fromJson(dynamic source) => BreedsModel.fromMap(source);
}
