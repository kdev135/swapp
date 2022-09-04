class ProductModel {
  String label;
  int value;
  String imageUrl;
  String ownerId;
  List<String> tags = [];

  ProductModel(
      {required this.label, required this.value, required this.imageUrl, required this.ownerId, required this.tags});
}
