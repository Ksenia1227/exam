// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamsImpl _$$TeamsImplFromJson(Map<String, dynamic> json) => _$TeamsImpl(
      nameTeam: json['nameTeam'] as String,
      score: (json['score'] as num?)?.toInt() ?? 0,
      moreScore: (json['moreScore'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TeamsImplToJson(_$TeamsImpl instance) =>
    <String, dynamic>{
      'nameTeam': instance.nameTeam,
      'score': instance.score,
      'moreScore': instance.moreScore,
    };
