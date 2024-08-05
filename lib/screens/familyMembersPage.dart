import 'package:flutter/material.dart';
import 'package:tuko_app/components/item.dart';
import 'package:tuko_app/models/number.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: "sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png",
        jpnum: "Chichioya",
        ennum: "father"),
    ItemModel(
        sound: "sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        jpnum: "Musume",
        ennum: "daughter"),
    ItemModel(
        sound: "sounds/family_members/grand father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        jpnum: "Ojisan",
        ennum: "Grand Father"),
    ItemModel(
        sound: "sounds/family_members/mother.wav",
        image: "assets/images/family_members/family_mother.png",
        jpnum: "Hahaoya",
        ennum: "mother"),
    ItemModel(
        sound: "sounds/family_members/grand mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        jpnum: "Sobo",
        ennum: "Grand Mother"),
    ItemModel(
        sound: "sounds/family_members/older bother.wav",
        image: "assets/images/family_members/family_older_brother.png",
        jpnum: "Nisan",
        ennum: "older brother"),
    ItemModel(
        sound: "sounds/family_members/older sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        jpnum: "Ane",
        ennum: "older sister"),
    ItemModel(
        sound: "sounds/family_members/son.wav",
        image: "assets/images/family_members/family_son.png",
        jpnum: "musuko",
        ennum: "son"),
    ItemModel(
        sound: "sounds/family_members/younger brohter.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        jpnum: "otouto",
        ennum: "younger brother"),
    ItemModel(
        sound: "sounds/family_members/younger sister.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        jpnum: "imoto",
        ennum: "younger sister"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463025),
        title: const Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ItemList(item: numbers[index], color: const Color(0xff538634));
        },
      ),
    );
  }
}
