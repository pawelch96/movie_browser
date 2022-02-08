// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) => MovieDetails(
      title: json['title'] as String,
      budget: json['budget'] as int,
      revenue: json['revenue'] as int,
    );

Map<String, dynamic> _$MovieDetailsToJson(MovieDetails instance) =>
    <String, dynamic>{
      'title': instance.title,
      'budget': instance.budget,
      'revenue': instance.revenue,
    };
