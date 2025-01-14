// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_number_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesNumberModel _$CategoriesNumberModelFromJson(
        Map<String, dynamic> json) =>
    CategoriesNumberModel(
      data: CategoriesNumberData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesNumberModelToJson(
        CategoriesNumberModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CategoriesNumberData _$CategoriesNumberDataFromJson(
        Map<String, dynamic> json) =>
    CategoriesNumberData(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoriesTitles.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesNumberDataToJson(
        CategoriesNumberData instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

CategoriesTitles _$CategoriesTitlesFromJson(Map<String, dynamic> json) =>
    CategoriesTitles(
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoriesTitlesToJson(CategoriesTitles instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
