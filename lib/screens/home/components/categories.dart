import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'sidebar_container.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: 'Artificial Intelligence',
            numOfItems: 3,
            press: () {},
          ),
          Category(
            title: 'Augmented reality',
            numOfItems: 4,
            press: () {},
          ),
          Category(
            title: 'Development',
            numOfItems: 10,
            press: () {},
          ),
          Category(
            title: 'Flutter UI',
            numOfItems: 18,
            press: () {},
          ),
          Category(
            title: 'Technology',
            numOfItems: 12,
            press: () {},
          ),
          Category(
            title: 'UI/UX Design',
            numOfItems: 8,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;
  const Category({
    Key key,
    @required this.title,
    @required this.numOfItems,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: TextStyle(color: kBodyTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
