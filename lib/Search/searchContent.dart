import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'searchContainer.dart';

class SearchContent extends StatefulWidget {
  @override
  _SearchContentState createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent> {
  final List<String> foodItems = [
    'Pizza',
    'Mutton Mo:Mo',
    'Choco Waffle',
    'Chicken Biryeni',
  ];

  final List<String> trendingTag = [
    'Mo:Mo',
    'Vegan',
    'Bubble Tea',
    'Waffles',
    'Spicy Foods',
    'Cake',
    'Salads',
    'Birayni',
    'Mixed Birayni-Hydrabadi Special'
  ];

  // RecommendedModel obj = RecommendedModel();

  @override
  Widget build(BuildContext context) {
    // final recommendedFood = RecommendedModel.fetchAllRecommendedFood();
    // final food = recommendedFood.first;

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            bottom: 10.0,
            right: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Searches',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Wrap(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [for (var item in foodItems) _arrayContent(item)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Trending Tags',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Wrap(
                  children: [
                    for (var items in trendingTag) _trendingTag(items)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Recommendation for you',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SearchContainer(
                      // image: Image.asset('image/momo.jpg'),
                      isVeg: false,
                      name: 'C. Khekabab',
                      isFav: true,
                    ),
                    SearchContainer(
                      // image: Image.asset('image/momo.jpg'),
                      isVeg: false,
                      name: 'Egg Benedict',
                      isFav: true,
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: true,
                      name: 'Dum Biryani',
                      isFav: true,
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: true,
                      name: 'Blueberry Delight',
                      isFav: true,
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: false,
                      name: 'C. Momo',
                      isFav: true,
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: false,
                      name: 'Sandwich',
                      isFav: true,
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: true,
                      name: 'C. Salad',
                      isFav: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Offers For You',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: true,
                      name: 'C. Salad',
                      isFav: false,
                      discountTagText: '10% OFF this week',
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: false,
                      name: 'Sandwich',
                      isFav: false,
                      discountTagText: 'Get 2 for Rs.200',
                    ),
                    SearchContainer(
                      // image: Image.asset('image/momo.jpg'),
                      isVeg: false,
                      name: 'Fish Fillet',
                      isFav: false,
                      discountTagText: '20% OFF Today',
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: true,
                      name: 'Vanilla Mufin',
                      isFav: false,
                      discountTagText: '10% OFF Today',
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: false,
                      name: 'Noodle Stew',
                      isFav: false,
                      discountTagText: '5% OFF Today',
                    ),
                    SearchContainer(
                      // image: SvgPicture.asset("image/fry.svg"),
                      isVeg: true,
                      name: 'C. Salad',
                      isFav: false,
                      discountTagText: '10% OFF this week',
                    ),
                    SearchContainer(
                      // image: Image.asset('image/momo.jpg'),
                      isVeg: false,
                      name: 'Fish Fillet',
                      isFav: false,
                      discountTagText: '20% OFF Today',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  // List<Widget> foodSection(RecommendedModel foodModel) {
  //   return foodModel.facts
  //   .map((fact) =>new SearchContainer(fact.name,fact.isFav, fact.isFav, fact.facts)).toList();
  // }

  Widget _arrayContent(String foodText) {
    return Container(
      margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0, top: 6.0),
      height: 40.0,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(1, 0))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              foodText,
              style: TextStyle(fontSize: 12, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          VerticalDivider(
            color: Colors.grey.shade200,
            width: 2.0,
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              child: Icon(
                Feather.x,
                size: 15.0,
              ),
              onTap: () {
                setState(() {
                  foodItems.removeAt(0);
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _trendingTag(String trendingText) {
    return Container(
      margin: EdgeInsets.only(left: 6.0, right: 6.0, bottom: 6.0, top: 6.0),
      height: 40.0,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(1, 0))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
            child: SvgPicture.asset(
              'image/fire.svg',
              height: 20.0,
              width: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Text(
              trendingText,
              style: TextStyle(fontSize: 12, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
