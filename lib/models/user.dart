import 'dart:convert';

class User {
  final String name;
  final String email;
  final String password;
  final String address;
  final String type;
  final String id;
  final String token;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.password,
    required this.type,
    required this.token,
  });

  factory User.fromMap(Map<String, dynamic> data) => User(
        id: data['_id'] as String,
        name: data['name'] as String,
        email: data['email'] as String,
        address: data['address'] as String,
        password: data['password'] as String,
        type: data['type'] as String,
        token: data['token'] as String,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'address': address,
        'password': password,
        'type': type,
        'id': id,
        'token': token,
      };

  factory User.fromJson(String data) {
    return User.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toMap());

  User copyWith({
    String? name,
    String? email,
    String? address,
    String? password,
    String? type,
    String? id,
    String? token,
  }) {
    return User(
        name: name ?? this.name,
        email: email ?? this.email,
        address: address ?? this.address,
        password: password ?? this.password,
        type: type ?? this.type,
        id: id ?? this.id,
        token: token ?? this.token);
  }
}
