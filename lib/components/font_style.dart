import 'package:foodoo/hooks/export.dart';

TextStyle? getHeader({color = Colors.black}) {
  return TextStyle(
    fontFamily: 'Lobster Two',
    fontSize: 34.sp,
    fontWeight: FontWeight.bold,
    color: color,
  );
}

Text commonText({color, text, fontSize}) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Lobster Two',
      fontSize: fontSize,
      color: color
    ),
  );
}

Text boldText({text, fontSize}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: fontSize,
    ),
  );
}

Text commonText2({text}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.grey[800],
      fontSize: 13.0.sp,
    ),
  );
}
