import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

import 'currency.dart';
import 'language.dart';
import 'timezone.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required int id,
    required String email,
    String? name,
    String? avatar,
    @Default(Currency.USD) Currency currency,
    @Default(Language.en) Language language,
    @Default(Timezone.UTC) Timezone timezone,
    @Default(false) bool emailVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}