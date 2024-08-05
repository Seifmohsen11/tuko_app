import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

import 'package:tuko_app/models/number.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF4DB), child: Image.asset(item.image)),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpnum,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(item.ennum,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
              padding: const EdgeInsets.only(right: 18),
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
