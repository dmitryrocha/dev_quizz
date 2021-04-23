import 'package:DevQuiz/challenge/widgets/awnser/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
              isRight: true,
              isSelected: true,
              title:
                  "Possibilita a criação de aplicativos compilados nativamente"),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compilados nativamente"),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compilados nativamente")
        ],
      ),
    );
  }
}
