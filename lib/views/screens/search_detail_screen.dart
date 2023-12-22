import 'package:flutter/material.dart';
import 'package:real_state_ui_clone/font_style.dart';
import 'package:real_state_ui_clone/views/components/add_horizontol_gap.dart';
import 'package:real_state_ui_clone/views/components/add_vertical_gap.dart';

class SearchDetailScreen extends StatelessWidget {
  const SearchDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image2.png',
                      ),
                      fit: BoxFit.cover)),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  const AddVerticalGap(),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 25,
                      )),
                ],
              ),
            )),
        Expanded(
          flex: 3,
          child: ListView(
            children: [
              Container(
                color: Colors.white,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "\$4,999",
                                style: h2Textstyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.green.shade900),
                              ),
                              Text(
                                "1,200 sq.ft 4 Beds 2 Bath",
                                style: smTextstyle,
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            size: 18,
                          )
                        ],
                      ),
                      const AddVerticalGap(),
                      const Divider(),
                      const AddVerticalGap(),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                          ),
                          const AddHorizontolGap(),
                          Expanded(
                            child: Text(
                              "Exclusive apartments near the Bay Area With over 200+ Amenities, this is one to die for !",
                              style: smTextstyle.copyWith(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      const AddVerticalGap(),
                      Row(
                        children: [
                          const Icon(
                            Icons.people_alt_outlined,
                            color: Colors.red,
                          ),
                          const AddHorizontolGap(),
                          Expanded(
                            child: Text(
                              "Contact Pedro Amorim",
                              style: smTextstyle.copyWith(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      const AddVerticalGap(),
                      Row(
                        children: [
                          const Icon(
                            Icons.card_giftcard_rounded,
                            color: Colors.red,
                          ),
                          const AddHorizontolGap(),
                          Expanded(
                            child: Text(
                              "New users -Flat 15% on your first transaction",
                              style: smTextstyle.copyWith(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      const AddVerticalGap(),
                      const AddVerticalGap(),
                      const AddVerticalGap(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 40,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    foregroundColor: Colors.black,
                                    textStyle: defaultTextstyle,
                                    backgroundColor: Colors.grey.shade100),
                                onPressed: () {},
                                child: const Text("Ask a Question")),
                          ),
                          SizedBox(
                            height: 40,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    foregroundColor: Colors.white,
                                    textStyle: defaultTextstyle,
                                    backgroundColor: Colors.red),
                                onPressed: () {},
                                child: const Text("Express Interest")),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
