import 'package:freezed_annotation/freezed_annotation.dart';

part 'physical_attribute_model.freezed.dart';
part 'physical_attribute_model.g.dart';

@freezed
class PhysicalAttribute with _$PhysicalAttribute {
  const factory PhysicalAttribute({
    String? height,
    String? weight,
    String? complexion,
    String? bloodGroup,
  }) = _PhysicalAttribute;

  factory PhysicalAttribute.fromJson(Map<String, dynamic> json) => _$PhysicalAttributeFromJson(json);
}
