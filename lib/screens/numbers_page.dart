import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/list_item.dart';
import '../model/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  ///create object from Number class
//  final Number one =const Number(
//   image:'images/numbers/number_one.png',
//   jpName:'ichi',
//   enName:'one' );

  final List<Item> numbers = const [
    Item(
        image: 'images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'One',
        sound: 'number_one_sound.mp3'),
    Item(
        image: 'images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three',
        sound: 'number_three_sound.mp3'),
    Item(
        image: 'images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four',
        sound: 'number_four_sound.mp3'),
    Item(
        image: 'images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five',
        sound: 'number_five_sound.mp3'),
    Item(
        image: 'images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six',
        sound: 'number_six_sound.mp3'),
    Item(
        image: 'images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'Seven',
        sound: 'number_seven_sound.mp3'),
    Item(
        image: 'images/numbers/number_eight.png',
        jpName: 'Hanchi',
        enName: 'Eight',
        sound: 'number_eight_sound.mp3'),
    Item(
        image: 'images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'Nine',
        sound: 'number_nine_sound.mp3'),
    Item(
        image: 'images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'Ten',
        sound: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: numbers[index],
              color: Color(0xffEF9235),
              itemType: 'numbers',
            );
          }),
      // it's a way
      // body: ListView(
      //   children: getList(numbers) ,
      // ),
    );
  }

  ///// method for loop NumberItem is wedget so <widget>=<NumberItem>
  // List<Widget> getList(List<Item> numbers) {
  //   List<ListItem> itemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(ListItem(
  //       number: numbers[i],
  //       color: Color(0xffEF9235),
  //       itemType: 'numbers',
  //     ));
  //   }
  //   return itemList;
  // }
}
