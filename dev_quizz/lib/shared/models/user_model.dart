import 'dart:convert';

class UserModel {
  final String nome;
  final String photoURL;
  final int score;

  UserModel(
      {required this.nome, required this.photoURL, this.score = 0});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'photoURL': photoURL,
      'score': score,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      nome: map['nome'],
      photoURL: map['photoURL'],
      score: map['score'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
