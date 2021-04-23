class UserModel {
  final String nome;
  final String photoURL;
  final int score;

  UserModel(
      {required this.nome, required this.photoURL, this.score = 0});
}
