import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_food_recipe_app/presentation/component/input_field.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/colors.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/fonts.dart';

final class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SignUpScreenState();
}

final class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create an account',
                style: Fonts.largeTextBold,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '''Let’s help you set up your account, \nit won’t take long.''',
                style: Fonts.smallerTextRegular,
              ),
              SizedBox(
                height: 20,
              ),
              InputField(
                inputTitle: 'Name',
                hintText: 'Enter Name',
              ),
              SizedBox(
                height: 20,
              ),
              InputField(
                inputTitle: 'Email',
                hintText: 'Enter Email',
              ),
              SizedBox(
                height: 20,
              ),
              InputField(
                inputTitle: 'Password',
                hintText: 'Enter Password',
              ),
              SizedBox(
                height: 20,
              ),
              InputField(
                inputTitle: 'Confirm Password',
                hintText: 'Retype Password',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return CustomCheckbox(
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue ?? false;
                        });
                        print('Checkbox changed: $newValue');
                      },
                    );
                  })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          side: WidgetStateBorderSide.resolveWith(
            (Set<WidgetState> states) {
              return BorderSide(
                color: CustomColors.secondary100,
                width: 1,
              );
            },
          ),
          fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            return Colors.white; // Fill color when unchecked
          }),
          checkColor:
              WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            return CustomColors.secondary100; // Check color when unchecked
          }),
        ),
      ),
      child:  Padding(
        padding: EdgeInsets.zero, // Set padding to zero
        child: Checkbox(
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
