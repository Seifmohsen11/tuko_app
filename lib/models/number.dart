class ItemModel {
  final String sound;
  final String image;
  final String jpnum;
  final String ennum;
  const ItemModel(
      {required this.sound,
      required this.image,
      required this.jpnum,
      required this.ennum});
}

class PhraseModel {
  final String sound;
  final String jpnum;
  final String ennum;
  const PhraseModel({
    required this.sound,
    required this.jpnum,
    required this.ennum,
  });
}
