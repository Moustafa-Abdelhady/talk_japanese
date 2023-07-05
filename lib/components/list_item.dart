import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '../model/item.dart';
import '../model/phrases.dart';
import '../screens/numbers_page.dart';
// import 'package:audioplayers/audioplayers.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color,required this.itemType});

  final Item item; 
  final Color color;
  final String itemType;

  

  @override
  Widget build(BuildContext context) {
    return 
    item.image == null ?
     Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          const Divider(
            thickness: 2,
            height: 30,
            color: Colors.white,
          ),
          Container(
              color: Color(0xffFFF6DC),
              child: Image(
                image: AssetImage(
                  item.image!,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  item.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
              onPressed: () {
                // print('Sound is Playing');
                try {
                  AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(item.sound);
                } catch (e) {
                  print(e);
                }
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 30)),
        ],
      ),
    ): Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
             item.jpName ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                 item.enName ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix:'assets/sounds/$itemType/');
                player.play(item.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    
    );
  }
}



class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key,required this.color,required this.itemType,required this.phrase});

 final Phrase phrase; 
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return  
     Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
             phrase.jpName ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                 phrase.enName ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix:'assets/sounds/$itemType/');
                player.play(phrase.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    
    );
  }
}
