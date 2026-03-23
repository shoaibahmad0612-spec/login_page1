class User {
  final String name;
  final String email;
  final String password;

  const User({
    required this.name,
    required this.email,
    required this.password,
  });

  /// Create a User from a JSON map.
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  /// Convert the User to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() => 'User(name: $name, email: $email)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          password == other.password;

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ password.hashCode;
}
