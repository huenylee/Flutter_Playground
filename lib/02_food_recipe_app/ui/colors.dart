import 'dart:ui';

abstract class CustomColors {
  static Color black = ColorExtension.fromHex(hexString: '#000000');
  static Color gray1 = ColorExtension.fromHex(hexString: '#484848');
  static Color gray2 = ColorExtension.fromHex(hexString: '#797979');
  static Color gray3 = ColorExtension.fromHex(hexString: '#A9A9A9');
  static Color gray4 = ColorExtension.fromHex(hexString: '#D9D9D9');
  static Color white = ColorExtension.fromHex(hexString: '#FFFFFF');

  static Color primary100 = ColorExtension.fromHex(hexString: '#129575');
  static Color primary80 = ColorExtension.fromHex(hexString: '#71B1A1');
  static Color primary60 = ColorExtension.fromHex(hexString: '#AFD3CA');
  static Color primary40 = ColorExtension.fromHex(hexString: '#DBEBE7');
  static Color primary20 = ColorExtension.fromHex(hexString: '#F6FAF9');

  static Color secondary100 = ColorExtension.fromHex(hexString: '#FF9C00');
  static Color secondary80 = ColorExtension.fromHex(hexString: '#FFA61A');
  static Color secondary60 = ColorExtension.fromHex(hexString: '#FFBA4D');
  static Color secondary40 = ColorExtension.fromHex(hexString: '#FFCE80');
  static Color secondary20 = ColorExtension.fromHex(hexString: '#FFE1B3');

  static Color error = ColorExtension.fromHex(hexString: '#E94A59');
  static Color warning = ColorExtension.fromHex(hexString: '#995E00');

  static Color success = ColorExtension.fromHex(hexString: '#31B057');
  static Color success10 = ColorExtension.fromHex(hexString: '#EAF7EE');

  static Color rating = ColorExtension.fromHex(hexString: '#FFAD30');

  static Color primaryColor = ColorExtension.fromHex(hexString: '#129575');
}

extension ColorExtension on Color {
  static Color fromHex({
    required String hexString
  }) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}