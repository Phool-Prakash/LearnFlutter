import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User1 {
  final String name;
  final int age;
  final String email;

  User1({required this.name, required this.age, required this.email});

  // factory User1.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // Map<String, dynamic> toJson() => _$UserToJson(this);
}
