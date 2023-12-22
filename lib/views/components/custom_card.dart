import 'package:flutter/material.dart';
import 'package:real_state_ui_clone/font_style.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                    height: 100,
                    child: Image.asset(
                      'assets/images/image1.png',
                      fit: BoxFit.cover,
                    )),
              ],
            ),
          ),
          Positioned(
              bottom: 10,
              right: 10,
              child: Chip(
                  backgroundColor: Colors.white,
                  label: Text(
                    "Starts at \$1,999/sq.ft",
                    style: smTextstyle,
                  )))
        ],
      ),
    );
  }
}
