import 'package:flutter/material.dart';

import '../../font_style.dart';
import '../components/add_vertical_gap.dart';
import '../screens/search_detail_screen.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Saved Items",
                style: h2Textstyle.copyWith(color: Colors.black),
              ),
              Row(
                children: [
                  Text(
                    "Sort",
                    style: smTextstyle.copyWith(color: Colors.black),
                  ),
                  const Icon(
                    Icons.sort,
                    size: 14,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(12),
          children: [
            const FavoriteCard(),
            const FavoriteCard(),
            const FavoriteCard(),
            const FavoriteCard(),
            const FavoriteCard(),
          ],
        ),
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const SearchDetailScreen();
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.cover,
                  )),
            ),
            const AddVerticalGap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1,200 sq.ft 4 Beds 2 Bath",
                  style: smTextstyle.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$4,999",
                  style: labelTextStyle,
                )
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 12,
                  color: Colors.red,
                ),
                Text(
                  "252 1st Avenue",
                  style: smTextstyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
