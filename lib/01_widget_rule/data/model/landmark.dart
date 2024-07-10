import 'package:freezed_annotation/freezed_annotation.dart';

part 'landmark.freezed.dart';

part 'landmark.g.dart';

@freezed
class Landmark with _$Landmark {
  const factory Landmark({
    required int id,
    required String title,
    required String subTitle,
    required String imageUrl,
    @Default(0) int favoriteCount,
  }) = _Landmark;

  factory Landmark.fromJson(Map<String, Object?> json) => _$LandmarkFromJson(json);
}