import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/list_item.dart';
import '../model/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<Item> familyMembers = const [
    Item(
        image: 'images/famile_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger Brother',
        sound: 'younger_brohter.wav'),
    Item(
        image: 'images/famile_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger Sister',
        sound: 'younger_sister.wav'),
    Item(
        image: 'images/famile_members/family_older_brother.png',
        jpName: 'Nīsan',
        enName: 'Older Brother',
        sound: 'older_bother.wav'),
    Item(
        image: 'images/famile_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older Sister',
        sound: 'older_sister.wav'),
    Item(
        image: 'images/famile_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'son.wav'),
    Item(
        image: 'images/famile_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'daughter.wav'),
    Item(
        image: 'images/famile_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        sound: 'father.wav'),
    Item(
        image: 'images/famile_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'mother.wav'),
    Item(
        image: 'images/famile_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'Grand Father',
        sound: 'grand_father.wav'),
    Item(
        image: 'images/famile_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand Mother',
        sound: 'grand_mother.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: familyMembers[index],
              color: Color(0xff4e792f),
            itemType:'family_members',);
          }),
    );
  }
}
