import 'package:flutter/material.dart';

import 'package:real_state_ui_clone/font_style.dart';
import 'package:real_state_ui_clone/views/components/add_vertical_gap.dart';
import 'package:real_state_ui_clone/views/screens/search_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(padding: const EdgeInsets.all(12), children: [
          const AddVerticalGap(),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.chevron_left)),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2 BHK Residential",
                          hintStyle: defaultTextstyle),
                    ),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close,
                        size: 18,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
          ),
          const AddVerticalGap(),
          Wrap(
            runSpacing: 5,
            spacing: 5,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "within 2mi",
                    style: defaultTextstyle,
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Luxury",
                    style: defaultTextstyle.copyWith(color: Colors.green),
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Schools",
                    style: defaultTextstyle,
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Security",
                    style: defaultTextstyle,
                  )),
            ],
          ),
          const AddVerticalGap(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "32 Results Found",
                style: h2Textstyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
              GestureDetector(
                onTap: () async {
                  print("sort button tapped !!!");
                  await showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        child: Column(
                          children: [
                            const AddVerticalGap(),
                            Container(
                              width: 30,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            const AddVerticalGap(),
                            TabBar(
                                indicatorColor: Colors.green,
                                controller: controller,
                                labelColor: Colors.black,
                                labelStyle: defaultTextstyle,
                                unselectedLabelStyle: defaultTextstyle,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "Sort By",
                                      style: defaultTextstyle,
                                    ),
                                  ),
                                  const Tab(
                                    text: "Categories",
                                  )
                                ]),
                            const AddVerticalGap(),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TabBarView(
                                    controller: controller,
                                    children: [
                                      ListView(
                                        shrinkWrap: true,
                                        children: const [
                                          CustomListtile(),
                                          CustomListtile(),
                                          CustomListtile(),
                                          CustomListtile(),
                                        ],
                                      ),
                                      const Text("dfasd")
                                    ]),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Sort",
                      style: smTextstyle,
                    ),
                    const Icon(
                      Icons.sort_rounded,
                      size: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
          const AddVerticalGap(),
          const SearchedCard(),
          const AddVerticalGap(),
          const SearchedCard(),
          const AddVerticalGap(),
          const SearchedCard(),
        ]),
      ),
    );
  }
}

class CustomListtile extends StatelessWidget {
  const CustomListtile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        tileColor: Colors.green.shade50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Text(
          "Newest First",
          style: defaultTextstyle,
        ),
        trailing: const Icon(
          Icons.check,
          color: Colors.green,
        ),
      ),
    );
  }
}

class SearchedCard extends StatelessWidget {
  const SearchedCard({
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
    );
  }
}
