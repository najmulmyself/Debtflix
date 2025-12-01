import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._({
    required this.id,
    required this.email,
    this.name,
    this.avatar,
    this.currency,
    this.language,
    this.timezone,
    this.emailVerified = false,
    this.createdAt,
    this.updatedAt,
  });

  factory User({
    required int id,
    required String email,
    String? name,
    String? avatar,
    Currency currency = const Currency.USD,
    Language language = const Language.en,
    String timezone = const Timezone.UTC,
    bool emailVerified = false,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return User._(
      id: id,
      email: email,
      name: name,
      avatar: avatar,
      currency: currency,
      language: language,
      timezone: timezone,
      emailVerified: emailVerified,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }

  User copyWith({
    String? name,
    String? avatar,
    Currency? currency,
    Language? language,
    String? timezone,
    bool? emailVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return User._(
      id: id,
      email: email,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      currency: currency ?? this.currency,
      language: language ?? this.language,
      timezone: timezone ?? this.timezone,
      emailVerified: emailVerified ?? this.emailVerified,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name)';
  }

  @override
  List<Object> get props => [
        id,
        email,
        name,
        avatar,
        currency,
        language,
        timezone,
        emailVerified,
        createdAt,
        updatedAt,
      ];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return other is User &&
          id == other.id &&
          email == other.email &&
          name == other.name;
    }
    return false;
  }

  @override
  int get hashCode => id.hashCode;
}