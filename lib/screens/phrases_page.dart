import 'package:flutter/material.dart';
import 'package:tuko_app/components/item_info.dart';
import 'package:tuko_app/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<PhraseModel> phrases = const [
    PhraseModel(
        sound: "sounds/phrases/are_you_coming.wav",
        jpnum: "Kimasu ka",
        ennum: "Are you coming"),
    PhraseModel(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        jpnum: "Wasurezu ni kōdoku shite kudasai",
        ennum: "Dont forget to subscribe"),
    PhraseModel(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        jpnum: "Go kibun wa ikagadesu ka",
        ennum: "How are you feeling"),
    PhraseModel(
        sound: "sounds/phrases/i_love_anime.wav",
        jpnum: "Watashi wa anime ga daisukidesu",
        ennum: "i love anime"),
    PhraseModel(
        sound: "sounds/phrases/i_love_programming.wav",
        jpnum: "Watashi wa puroguramingu ga daisukidesu",
        ennum: "i love programming"),
    PhraseModel(
        sound: "sounds/phrases/programming_is_easy.wav",
        jpnum: "Puroguramingu wa kantandesu",
        ennum: "Programming is easy"),
    PhraseModel(
        sound: "sounds/phrases/what_is_your_name.wav",
        jpnum: "Anata no namae wa nandesuka",
        ennum: "What is your name"),
    PhraseModel(
        sound: "sounds/phrases/where_are_you_going.wav",
        jpnum: "Doko ni iku no",
        ennum: "Where are you going"),
    PhraseModel(
        sound: "sounds/phrases/yes_im_coming.wav",
        jpnum: "Hai, kimasu",
        ennum: "Yes im coming"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463025),
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ItemInfo(item: phrases[index], color: const Color(0xff47A5CB));
        },
      ),
    );
  }
}
