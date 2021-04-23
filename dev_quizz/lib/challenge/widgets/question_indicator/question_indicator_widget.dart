import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestIndicatorWidget extends StatefulWidget {
  @override
  _QuestIndicatorWidgetState createState() => _QuestIndicatorWidgetState();
}

class _QuestIndicatorWidgetState extends State<QuestIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão 04",
                style: AppTextStyles.body,
              ),
              Text(
                  "de 10",
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(height: 16,),
          ProgressindicatorWidget(value: 0.7)
        ],
      ),
    );
  }
}
