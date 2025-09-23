import 'package:freezed_annotation/freezed_annotation.dart';

part 'horoscope_details_model.freezed.dart';
part 'horoscope_details_model.g.dart';

@freezed
class HoroscopeDetails with _$HoroscopeDetails {
  const factory HoroscopeDetails({
    String? birthTime,
    String? birthDistrict,
    String? rashi,
    String? nakshatra,
  }) = _HoroscopeDetails;

  factory HoroscopeDetails.fromJson(Map<String, dynamic> json) => _$HoroscopeDetailsFromJson(json);
}
