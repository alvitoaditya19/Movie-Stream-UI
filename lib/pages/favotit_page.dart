import 'package:flutter/material.dart';
import 'package:movie_stream_app/shared/theme.dart';
import 'package:movie_stream_app/widgets/favorite_card.dart';

class FavoritPage extends StatelessWidget {
  const FavoritPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                'My Favorite',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(height: 20,),
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard(),

          ]),
        ));
  }
}
