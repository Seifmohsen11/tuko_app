import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuko_app/screens/colors_page.dart';
import 'package:tuko_app/screens/familyMembersPage.dart';
import 'package:tuko_app/screens/numbers_page.dart';
import 'package:tuko_app/screens/phrases_page.dart';

import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        title: const Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff48332C),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: const Color(0xffF99531),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Numbers();
              }));
            },
          ),
          Category(
            text: "Family Members",
            color: const Color(0xff528031),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembers();
              }));
            },
          ),
          Category(
            text: "Colors",
            color: const Color(0xff7D40A2),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Category(
              text: "Phrases",
              color: const Color(0xff47A5CB),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              })
        ],
      ),
    );
  }
}
