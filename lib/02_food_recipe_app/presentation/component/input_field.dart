import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/colors.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/fonts.dart';

final class InputField extends StatelessWidget {
  final String inputTitle;
  final String hintText;

  const InputField({
    required this.inputTitle,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          inputTitle,
          style: Fonts.smallerTextRegular,
        ),
        SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: CustomColors.gray4)
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Fonts.smallerTextRegular,
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 20)
            ),

          ),
        ),
      ],
    );
  }
}