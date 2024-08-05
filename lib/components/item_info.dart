import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

import 'package:tuko_app/models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item, required this.color});
  final PhraseModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpnum,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(item.ennum,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
              padding: const EdgeInsets.only(right: 14),
              child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(item.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
