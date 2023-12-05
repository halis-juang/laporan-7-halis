import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuy_trip/shared/constant.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key? key}) : super(key: key);
  final List<CategoryModel> Categories = [
    CategoryModel(name: "Tertinggi", image: "tertinggi.jpg"),
    CategoryModel(name: "Beautiful", image: "beautiful.jpg"),
    CategoryModel(name: "Merapi", image: "merapi.jpg"),
    CategoryModel(name: "Extream", image: "extream.jpg"),
    CategoryModel(name: "Terangker", image: "extream.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        Categories.length,
        (index) => Container(
          margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 16),
          width: 90,
          height: 114,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/${Categories[index].image}",
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                Categories[index].name,
                style: semiBold.copyWith(color: white, fontSize: 12),
              ),
            ),
          ),
        ),
      )),
    );
  }
}

class CategoryModel {
  final String name;
  final String image;

  CategoryModel({
    required this.name,
    required this.image,
  });
}
