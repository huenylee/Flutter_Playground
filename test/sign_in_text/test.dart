import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/02_food_recipe_app/presentation/component/big_button.dart';
import 'package:learn_flutter_together/02_food_recipe_app/presentation/component/input_field.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/colors.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/fonts.dart';

void main() {
  group('InputField UI Tests', () {
    const inputTitle = 'Test Title';
    const hintText = 'Test Hint';

    Widget buildTestWidget() {
      return MaterialApp(
        home: Scaffold(
          body: InputField(
            inputTitle: inputTitle,
            hintText: hintText,
          ),
        ),
      );
    }

    testWidgets('displays correct input title', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      expect(find.text(inputTitle), findsOneWidget);
    });

    testWidgets('input title has correct style', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      final titleWidget = tester.widget<Text>(find.text(inputTitle));
      expect(titleWidget.style, equals(Fonts.smallerTextRegular));
    });

    testWidgets('contains TextField', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('TextField has correct hint text', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      final textField = tester.widget<TextField>(find.byType(TextField));
      expect(textField.decoration?.hintText, equals(hintText));
    });

    testWidgets('TextField has correct border', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      final container = find.ancestor(
        of: find.byType(TextField),
        matching: find.byType(Container),
      );
      expect(container, findsOneWidget);

      final containerWidget = tester.widget<Container>(container);
      final decoration = containerWidget.decoration as BoxDecoration;
      expect(decoration.borderRadius, equals(BorderRadius.circular(10)));
      expect(
        decoration.border,
        equals(Border.all(color: CustomColors.gray4)),
      );
    });
  });

  group('BigButton UI Tests', () {
    const buttonTitle = 'Test Button';

    Widget buildTestWidget() {
      return MaterialApp(
        home: Scaffold(
          body: BigButton(
            onTap: () {},
            title: buttonTitle,
          ),
        ),
      );
    }

    testWidgets('displays correct button text', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      expect(find.text(buttonTitle), findsOneWidget);
    });

    testWidgets('has correct text style', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      final textWidget = tester.widget<Text>(find.text(buttonTitle));
      expect(textWidget.style?.color, equals(CustomColors.white));
      expect(textWidget.style?.fontSize, equals(Fonts.normalTextSemiBold.fontSize));
      expect(textWidget.style?.fontWeight, equals(FontWeight.w500));
    });

    testWidgets('contains arrow image', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('has correct size and shape', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());
      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.maxWidth, equals(double.infinity));
      expect(container.constraints?.maxHeight, equals(60));

      final decoration = container.decoration as BoxDecoration;
      expect(decoration.borderRadius, equals(BorderRadius.circular(10)));
      expect(decoration.color, equals(CustomColors.primary100));
    });

    testWidgets('changes color when pressed', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestWidget());

      await tester.press(find.byType(GestureDetector));
      await tester.pump();

      final pressedContainer = tester.widget<Container>(find.byType(Container));
      final pressedDecoration = pressedContainer.decoration as BoxDecoration;
      expect(pressedDecoration.color, equals(CustomColors.gray4));
    });

    testWidgets('calls onTap when tapped', (WidgetTester tester) async {
      bool tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BigButton(
              onTap: () => tapped = true,
              title: buttonTitle,
            ),
          ),
        ),
      );

      await tester.tap(find.byType(GestureDetector));
      await tester.pump();

      expect(tapped, isTrue);
    });
  });
}
