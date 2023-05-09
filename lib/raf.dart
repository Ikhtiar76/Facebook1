import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40.0, left: 10),
              child: Text(
                'facebook',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            const SizedBox(
              width: 110,
            ),
            Container(
                margin: const EdgeInsets.only(top: 40),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.black,
                    ))),
            const SizedBox(
              width: 10,
            ),
            Container(
                margin: const EdgeInsets.only(top: 40),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ))),
            const SizedBox(
              width: 10,
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/messenger.png',
                  )),
            )
          ],
        ),
      ],
    );
  }
}



