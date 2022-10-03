import 'package:flutter/material.dart';
import 'package:movie_stream_app/shared/theme.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: 10, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.only(right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/img_continue1.png",
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Avengers : End Game',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    )),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Action',
                  style: grey2TextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 36,
            height: 36,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(shape: BoxShape.circle, color: kRedColor),
            child: Image.asset(
              'assets/ic_like_inact.png',
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}
