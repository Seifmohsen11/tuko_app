import 'package:flutter/material.dart';
import 'package:tuko_app/components/item.dart';
import 'package:tuko_app/models/number.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: "sounds/numbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        jpnum: "ichi",
        ennum: "one"),
    ItemModel(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        jpnum: "Ni",
        ennum: "two"),
    ItemModel(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        jpnum: "San",
        ennum: "three"),
    ItemModel(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        jpnum: "Shi",
        ennum: "four"),
    ItemModel(
        sound: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        jpnum: "GO",
        ennum: "five"),
    ItemModel(
        sound: "sounds/numbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        jpnum: "Roku",
        ennum: "six"),
    ItemModel(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        jpnum: "Sebun",
        ennum: "seven"),
    ItemModel(
        sound: "sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        jpnum: "hachi",
        ennum: "eight"),
    ItemModel(
        sound: "sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        jpnum: "Kyu",
        ennum: "nine"),
    ItemModel(
        sound: "sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        jpnum: "Ju",
        ennum: "ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463025),
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ItemList(item: numbers[index], color: const Color(0xffF9952F));
        },
      ),
    );
  }
}
