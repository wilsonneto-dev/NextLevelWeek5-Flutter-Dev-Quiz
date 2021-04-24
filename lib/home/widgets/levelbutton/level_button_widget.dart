import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget({
    Key? key,
    required this.label,
  })   : assert(["Easy", "Medium", "Hard", "Expert"].contains(label)),
        super(key: key);

  final config = {
    "Easy": {
      "color": AppColors.levelButtonEasy,
      "fontColor": AppColors.levelButtonTextEasy,
      "borderColor": AppColors.levelButtonBorderEasy,
    },
    "Medium": {
      "color": AppColors.levelButtonMedium,
      "fontColor": AppColors.levelButtonTextMedium,
      "borderColor": AppColors.levelButtonBorderMedium,
    },
    "Hard": {
      "color": AppColors.levelButtonHard,
      "fontColor": AppColors.levelButtonTextHard,
      "borderColor": AppColors.levelButtonBorderHard,
    },
    "Expert": {
      "color": AppColors.levelButtonExpert,
      "fontColor": AppColors.levelButtonTextExpert,
      "borderColor": AppColors.levelButtonBorderExpert,
    }
  };

  Color get color => config[label]!['color']!;
  Color get fontColor => config[label]!['fontColor']!;
  Color get borderColor => config[label]!['borderColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(
          BorderSide(
            color: borderColor,
          ),
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 26.0,
          vertical: 6,
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            color: fontColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
