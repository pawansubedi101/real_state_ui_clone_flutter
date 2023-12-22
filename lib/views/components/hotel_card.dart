import 'package:flutter/material.dart';

import '../../font_style.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                width: 160,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Image.asset(
                  'assets/images/image1.png',
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$1,291-5,299",
                    style: defaultTextstyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "1-4 Beds, 1-2 Baths",
                    style: smTextstyle.copyWith(fontSize: 14),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
