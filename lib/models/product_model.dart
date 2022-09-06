class ProductModel {
  String name;
  int value;
  String imageUrl;
  String ownerId;
  List<String> tags = [];

  ProductModel(
      {required this.name, required this.value, required this.imageUrl, required this.ownerId, required this.tags});
}
