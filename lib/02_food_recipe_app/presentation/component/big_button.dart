import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/colors.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/fonts.dart';

final class BigButton extends StatefulWidget {
  final void Function() onTap;

  final String title;

  const BigButton({
    required this.onTap,
    required this.title,
  });

  @override
  State<StatefulWidget> createState() => _BigButtonState();
}

final class _BigButtonState extends State<BigButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: _isPressed ? CustomColors.gray4 : CustomColors.primary100),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 114,
              child: Center(
                child: Text(
                  widget.title,
                  style: Fonts.normalTextBold.copyWith(color: CustomColors.white),
                ),
              ),
            ),
            const SizedBox(width: 11),
            Image.asset(
              'assets/arrow_right.png',
              width: 20,
              height: 20,
              fit: BoxFit.cover,
            ),
          ],
        )),
      ),
    );
  }
}
