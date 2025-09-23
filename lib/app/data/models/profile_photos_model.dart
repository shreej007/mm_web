import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_photos_model.freezed.dart';
part 'profile_photos_model.g.dart';

@freezed
class ProfilePhotos with _$ProfilePhotos {
  const factory ProfilePhotos({
    String? profilePicUrl,
    List<String>? album,
  }) = _ProfilePhotos;

  factory ProfilePhotos.fromJson(Map<String, dynamic> json) => _$ProfilePhotosFromJson(json);
}
