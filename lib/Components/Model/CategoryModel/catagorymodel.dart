class Catagory_Model {
  String themeId;
  String name;
  String img;
  int minPrice;
  List themes;

  Catagory_Model({
    required this.themeId,
    required this.name,
    required this.img,
    required this.themes,
    required this.minPrice,
  });

  factory Catagory_Model.fromJSON({required Map data}) {
    return Catagory_Model(
      minPrice: data['minPrice'],
      themeId: data['themeId'],
      name: data['name'],
      img: data['img'],
      themes: data['themes'],
    );
  }
}
