import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressindicatorWidget extends StatelessWidget {
  const ProgressindicatorWidget({required this.value});

  final double value;
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }


}
