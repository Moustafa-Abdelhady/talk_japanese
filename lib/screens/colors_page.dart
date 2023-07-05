import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../model/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

final List<Item> colors = const [
    Item(
        image: 'images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black',
        sound:'black.wav'),
    Item(
        image: 'images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound:'brown.wav'),
    Item(
        image: 'images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'Dusty yellow',
        sound:'dusty_yellow.wav'),
    Item(
        image: 'images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        sound:'gray.wav'),
    Item(
        image: 'images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound:'green.wav'),
    Item(
        image: 'images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound:'red.wav'),
    Item(
        image: 'images/colors/color_white.png',
        jpName: 'Chichioya',
        enName: 'White',
        sound:'white.wav'),
    Item(
        image: 'images/colors/yellow.png',
        jpName: 'Hahaoya',
        enName: 'Yellow',
        sound:'yellow.wav'),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: colors[index],
              color: Color(0xff79359f),
            itemType:'colors',);
          }),
    );
  }
}