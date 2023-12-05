import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuy_trip/shared/constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/gunung merbabu.jpg"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
            child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 40,
                        height: 49,
                        padding: EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Details",
                      style: semiBold.copyWith(color: white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 0),
                          blurRadius: 16)
                    ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Gunung Prau',
                          style: bold.copyWith(color: white, fontSize: 20),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 24,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      "apa yang sedang kamu lakukan disana dan apa yang sedang lakukan di sni, saya apa yang sedang kamu lakukan disana dan apa yang sedang lakukan di sni, saya  apa yang sedang kamu lakukan disana dan apa yang sedang lakukan di sni, saya",
                      style: regular.copyWith(
                        color: white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Ketinggian",
                              style: semiBold.copyWith(
                                color: white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "105 ml",
                              style: regular.copyWith(
                                  color: Color(0xffc8c8c8), fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Suhu",
                              style: semiBold.copyWith(
                                color: white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "105 ml",
                              style: regular.copyWith(
                                  color: Color(0xffc8c8c8), fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Status",
                              style: semiBold.copyWith(
                                color: white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "105 ml",
                              style: regular.copyWith(
                                  color: Color(0xffc8c8c8), fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), color: white),
                      child: Center(
                        child: Text(
                          "Join",
                          style: semiBold.copyWith(color: black, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
