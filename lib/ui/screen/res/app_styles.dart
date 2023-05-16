import 'package:flutter/material.dart';
import 'package:places/res/app_colors.dart';

abstract class AppFonts {
  //TODO minor текстовые стили можно вынести в отдельный файл, чтоб каждый раз не описывать одинаковые стили
  // Принял решение сделать эту подзадачу в ходе создания тем.
  // На сколько я понимаю, это будет логичнее и придётся меньше переделывать.
// static const textRegular = TextStyle(
//     fontSize: 16,
//     height: 1,
//     fontWeight: FontWeight.w400,
//     color: ,
//   );
}

const TextStyle _text = TextStyle(
  fontStyle: FontStyle.normal,
);

TextStyle regular10 = _text.copyWith(fontSize: 10);
TextStyle regular12 = _text.copyWith(fontSize: 12);
TextStyle regular14 = _text.copyWith(fontSize: 14);

TextStyle matHeadline6 = _text.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  letterSpacing: 0.15,
);
