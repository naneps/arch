import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? avatar;
  final String? token;

  const User({
    required this.id,
    required this.email,
    required this.name,
    this.avatar,
    this.token,
  });

  User copyWith({
    String? id, String? email, String? name,
    String? avatar, String? token,
  }) => User(
    id: id ?? this.id,
    email: email ?? this.email,
    name: name ?? this.name,
    avatar: avatar ?? this.avatar,
    token: token ?? this.token,
  );

  @override
  List<Object?> get props => [id, email, name, avatar, token];
}
