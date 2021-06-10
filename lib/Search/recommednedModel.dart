class RecommendedModel {
  bool isVeg;
  String name;
  bool isFav;
  final List<RecommendedModel> facts;

  RecommendedModel({this.name, this.isFav, this.isVeg, this.facts});

  static List<RecommendedModel> fetchAllRecommendedFood() {
    return [
      RecommendedModel(
        isVeg: true,
        name: 'Momo',
        isFav: true,
      ),
      RecommendedModel(
        isVeg: true,
        name: 'Momo',
        isFav: true,
      ),
      RecommendedModel(
        isVeg: true,
        name: 'Momo',
        isFav: true,
      ),
      RecommendedModel(
        isVeg: true,
        name: 'Momo',
        isFav: true,
      ),
    ];
  }
}
