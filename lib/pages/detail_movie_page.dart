import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_stream_app/shared/theme.dart';


class DetailMoviePage extends StatefulWidget {
  @override
  State<DetailMoviePage> createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage> {
  @override
   initState() {
    super.initState();
  }

  
  final List<String> imgList = [
    'assets/img_sing2.png',
    'assets/img_continue1.png',
    'assets/img_sing2.png',
    'assets/img_continue1.png',
    'assets/img_sing2.png',
    'assets/img_continue1.png',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget posterFilm() {
      return Container(
        height: 198,
        margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 0),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img_sing2.png"),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 130,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      margin: EdgeInsets.only(bottom: 14, left: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: kRedColor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/ic_poly.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Let’s Watch',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    margin: EdgeInsets.only(bottom: 14, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: kGreyColor,
                    ),
                    child: Text(
                      '1h 50m',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      );
    }

    Widget description() {
      return ClipRRect(
         borderRadius: BorderRadius.circular(30.0),
        // height: 500,
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(40), color: Colors.red,),
        // margin: EdgeInsets.fromLTRB(defaultMargin, 14, 0, 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sing 2',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
            Text(
              'Film ini mengikuti Buster dan pemeran barunya yang sekarang mengincar debut pertunjukan baru di Crystal Tower Theatre di Redshore City yang glamor. Tetapi tanpa koneksi, dia dan para...',
              style: grey2TextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                viewportFraction: 1,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: imgList
                  .map((item) => ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(item),
                            ),
                          ),
                        ),
                  ))
                  .toList(),
            ),
               ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [posterFilm(), description()],
          ),
        ),
      ),
    );
  }
}
