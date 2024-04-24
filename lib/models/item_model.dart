class ItemModel {
  final String image, title, subTitle, university, type;
  final String? faculty;
  ItemModel(
      {this.faculty,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.university,
      required this.type});
}
