import 'package:flutter/material.dart';
import 'package:talk_japanese/screens/colors_page.dart';
import 'package:talk_japanese/screens/phrases_page.dart';
import '../components/category_item.dart';
import '../screens/numbers_page.dart';
import '../screens/family_members.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Learn Japanese App',
        ),
      ),
      body: Container(
      
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/b2f9c469-e679-40fd-94f8-779a634bb095.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Category(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const NumbersPage()));
              },
              text: 'Numbers',
              color: Color(0xffEF9235),
            ),

           

            Category(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                 builder: (BuildContext context) => const FamilyMembersPage()),
                );
              },
              text: 'Family Members',
              color: Color(0xff558b37),
            ),

           

            Category(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                 builder: (BuildContext context) => const ColorsPage()),
                );
              },
              text: 'Colors',
              color: Color(0xff79359f),
            ),

         

            Category(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                 builder: (BuildContext context) => const PhrasesPage()),
                );
              },
              text: 'Phrases',
              color: Color(0xff50adc7),
            ),
           
          ],
        ),
      ),
    );
  }
}
