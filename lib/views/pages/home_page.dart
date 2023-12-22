import 'package:flutter/material.dart';
import 'package:real_state_ui_clone/font_style.dart';
import 'package:real_state_ui_clone/views/screens/search_screen.dart';
import 'package:real_state_ui_clone/views/screens/settings_screen.dart';
import '../components/add_vertical_gap.dart';
import '../components/custom_card.dart';
import '../components/hotel_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.location_on, color: Colors.red, size: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Location",
                      style: smTextstyle.copyWith(
                          color: Colors.black, height: 0.2),
                    ),
                    Text(
                      "Woodbridge",
                      style: labelTextStyle.copyWith(
                          color: Colors.black, height: 1.2),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const SettingsScreen();
                    },
                  ));
                },
                child: Image.asset('assets/images/settings-icon.png'))
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const SearchScreen();
                },
              ));
            },
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search by Location, Area or Pin Code",
                      style: smTextstyle,
                    ),
                    const Icon(
                      Icons.search,
                      size: 18,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Just In",
                style: h2Textstyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: smTextstyle,
                  ))
            ],
          ),
          const AddVerticalGap(),
          SizedBox(
            height: 225,
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [HotelCard(), HotelCard()],
            ),
          ),
          const AddVerticalGap(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Designer Homes",
                style: h2Textstyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: smTextstyle,
                  ))
            ],
          ),
          const AddVerticalGap(),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [CustomCard(), CustomCard()],
            ),
          ),
          const AddVerticalGap(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Near You",
                style: h2Textstyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: smTextstyle,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
