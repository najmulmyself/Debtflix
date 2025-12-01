class User {
  final int id;
  final String email;
  final String? name;
  final String? avatar;
  final String? currency;
  final String? language;
  final String? timezone;
  final bool emailVerified;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const User({
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

  User copyWith({
    int? id,
    String? email,
    String? name,
    String? avatar,
    String? currency,
    String? language,
    String? timezone,
    bool? emailVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
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
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is User &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        avatar == other.avatar &&
        currency == other.currency &&
        language == other.language &&
        timezone == other.timezone &&
        emailVerified == other.emailVerified &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => id.hashCode ^ email.hashCode ^ name.hashCode;
}