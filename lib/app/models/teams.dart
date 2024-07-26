import 'package:freezed_annotation/freezed_annotation.dart';

part 'teams.freezed.dart';
part 'teams.g.dart';

@freezed
class Teams with _$Teams {

  factory Teams({
    required String nameTeam,
    @Default(0) int score,
    @Default(0) int moreScore 
  }) = _Teams;

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}