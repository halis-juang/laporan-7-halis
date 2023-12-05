import 'package:flutter/material.dart';
import 'package:kuy_trip/screens/detail_xcreaam.dart';
import 'package:kuy_trip/shared/constant.dart';
import 'package:kuy_trip/widgets/category_widget.dart';
import 'package:kuy_trip/widgets/tab_widget.dart';
import 'package:kuy_trip/widgets/topdestinasi_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/icons/menu.png",
                          height: 24,
                        ),
                        Container(
                          width: 52,
                          height: 52,
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              color: black, shape: BoxShape.circle),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/halis.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Hay Halis",
                      style: semiBold.copyWith(
                        fontSize: 15,
                        color: greey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Jelajahi dan Temukan Gunung Favorit mu Di Dunia",
                      style: bold.copyWith(color: Colors.black, fontSize: 24),
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: TextField(
                              cursorColor: black,
                              style: regular.copyWith(
                                color: black,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: grey,
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 12),
                                hintText: "Search",
                                hintStyle: TextStyle(color: grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 48,
                          width: 56,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/icons/filter.png",
                              width: 24,
                              height: 24,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: TabWidget(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: semiBold.copyWith(fontSize: 16, color: black),
                        ),
                        Text(
                          "Lihat Semua",
                          style: regular.copyWith(color: grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CategoryWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Destinasi",
                          style: semiBold.copyWith(fontSize: 16, color: black),
                        ),
                        Text(
                          "Lihat Semua",
                          style: regular.copyWith(color: grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen())),
                      child: TopDestinasiWidgett()),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
