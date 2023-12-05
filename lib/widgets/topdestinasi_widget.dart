import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuy_trip/shared/constant.dart';

class TopDestinasiWidgett extends StatelessWidget {
  TopDestinasiWidgett({Key? key}) : super(key: key);
  final List<TopDestinasiModel> destination = [
    TopDestinasiModel(
      name: "Gunug Merbabu",
      image: "gunung merbabu.jpg",
      address: "JaTeng Indonesia",
    ),
    TopDestinasiModel(
      name: "Gunung Bromo",
      image: "gunung bromo.jpg",
      address: "JaTim Indonesia",
    ),
    TopDestinasiModel(
      name: "Gunug Fuji",
      image: "gunung fuji.png",
      address: "Honshu Jepang",
    ),
    TopDestinasiModel(
      name: "Gunung Prau",
      image: "gunung prau.jpg",
      address: "JaTeng Indonesia",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          destination.length,
          (index) => Container(
            width: 195,
            height: 193,
            margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/${destination[index].image}",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination[index].name,
                          style: semiBold.copyWith(fontSize: 12, color: white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage("assets/icons/location.png"),
                              width: 10,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              destination[index].address,
                              style:
                                  medium.copyWith(fontSize: 10, color: white),
                            )
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopDestinasiModel {
  final String name;
  final String image;
  final String address;

  TopDestinasiModel({
    required this.name,
    required this.image,
    required this.address,
  });
}