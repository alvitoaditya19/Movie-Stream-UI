import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_stream_app/shared/theme.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,
            height: 200,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/img_continue1.png",
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mortal Combat',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Genre\t ',
                    style: grey2TextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Action',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'Realese',
                    style: grey2TextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    '14 April 2021',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'Director',
                    style: grey2TextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Simon McQuoid',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Text(
                '2 hour 10 minute',
                style: grey2TextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 14),
              RatingBar.builder(
                unratedColor: kGrey2Color,
                itemSize: 24.0,
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: kYellowColor,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
