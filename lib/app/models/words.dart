import 'package:freezed_annotation/freezed_annotation.dart';

part 'words.freezed.dart';
part 'words.g.dart';

@freezed
class Words with _$Words {

  factory Words({
    required String word,
    required bool correct,
  }) = _Words;

  factory Words.fromJson(Map<String, dynamic> json) => _$WordsFromJson(json);
}