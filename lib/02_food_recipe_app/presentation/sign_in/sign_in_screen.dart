import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_food_recipe_app/presentation/component/big_button.dart';
import 'package:learn_flutter_together/02_food_recipe_app/presentation/component/input_field.dart';
import 'package:learn_flutter_together/02_food_recipe_app/presentation/component/shadow_button.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/colors.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/fonts.dart';

final class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hello,',
                style: Fonts.headerTextBold,
              ),
              Text(
                'Welcome Back!',
                style: Fonts.largeTextRegular,
              ),
              const SizedBox(height: 57),
              const InputField(
                inputTitle: 'Email',
                hintText: 'Enter Email',
              ),
              const SizedBox(height: 30),
              const InputField(
                inputTitle: 'Password',
                hintText: 'Enter Password',
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Forgot Password?',
                  style: Fonts.smallerTextRegular
                      .copyWith(color: CustomColors.secondary100),
                ),
              ),
              const SizedBox(height: 25),
              BigButton(
                onTap: () {
                  print('버튼 클릭됨');
                },
                title: 'Sign In',
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 50.0,
                      color: CustomColors.gray4,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Or Sign In With',
                      style: Fonts.smallerTextSemiBold
                          .copyWith(color: CustomColors.gray4),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 1,
                      width: 50.0,
                      color: CustomColors.gray4,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Shadowbutton(
                    imagePath: 'assets/google.png',
                    onPressed: () {
                      print('구글 로그인');
                    },
                    width: 44,
                    height: 44,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Shadowbutton(
                    imagePath: 'assets/facebook.png',
                    onPressed: () {
                      print('페이스북 로그인');
                    },
                    width: 44,
                    height: 44,
                  )
                ],
              ),
              const SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: Fonts.smallerTextSemiBold
                        .copyWith(color: CustomColors.black),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sign up',
                    style: Fonts.smallerTextSemiBold
                        .copyWith(color: CustomColors.secondary100),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
