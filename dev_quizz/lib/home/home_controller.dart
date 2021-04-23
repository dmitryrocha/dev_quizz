import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
        nome: "Dmitry Rocha",
        photoURL: "https://avatars.githubusercontent.com/u/60967038?v=4");
    state = HomeState.sucesso;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        title: "NLW 05 FLutter",
        questions: [
          QuestionModel(
            title: "Está gostando do Flutter?",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adorando", isRight: true),
              AwnserModel(title: "Estou achando meia boca"),
              AwnserModel(title: "Estou na mesma"),
            ],
          ),
          QuestionModel(
            title: "Está gostando do Flutter?",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adorando", isRight: true),
              AwnserModel(title: "Estou achando meia boca"),
              AwnserModel(title: "Estou na mesma"),
            ],
          ),
        ],
        image: AppImages.blocks,
        level: Level.facil,
      ),
    ];
    state = HomeState.sucesso;
  }
}
