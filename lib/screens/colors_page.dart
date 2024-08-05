import 'package:flutter/material.dart';
import 'package:tuko_app/components/item.dart';
import 'package:tuko_app/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
        sound: "sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png",
        jpnum: "Kuro",
        ennum: "Black"),
    ItemModel(
        sound: "sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png",
        jpnum: "Cha",
        ennum: "Brown"),
    ItemModel(
        sound: "sounds/colors/dusty yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        jpnum: "Hokorippoi kiiro",
        ennum: "Dusty yellow"),
    ItemModel(
        sound: "sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png",
        jpnum: "Hai",
        ennum: "Grey"),
    ItemModel(
        sound: "sounds/colors/green.wav",
        image: "assets/images/colors/color_green.png",
        jpnum: "Midori",
        ennum: "Green"),
    ItemModel(
        sound: "sounds/colors/red.wav",
        image: "assets/images/colors/color_red.png",
        jpnum: "Aka",
        ennum: "Red"),
    ItemModel(
        sound: "sounds/colors/white.wav",
        image: "assets/images/colors/color_white.png",
        jpnum: "Shiro",
        ennum: "White"),
    ItemModel(
        sound: "sounds/colors/yellow.wav",
        image: "assets/images/colors/yellow.png",
        jpnum: "Kiiro",
        ennum: "Yellow"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463025),
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ItemList(item: colors[index], color: const Color(0xff7D40A2));
        },
      ),
    );
  }
}
