import 'package:flutter/foundation.dart';

///creat class of Number contain to image , jpName and enName

class Item {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const Item(
      {@required this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
}
