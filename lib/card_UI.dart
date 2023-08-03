// ignore_for_file: file_names

import 'package:beautiful_card_ui/common_widget.dart';
import 'package:flutter/material.dart';

Widget card1() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.network(
          'https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png',
          height: 160,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        ListTile(
          title: buildField("Cards Title 2"),
          subtitle: Row(
            children: <Widget>[
              const Spacer(),
              textButton("SHARE"),
              textButton("EXPLORE"),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget card2(BuildContext context) {
  return SizedBox(
    height: 200,
    child: Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ListTile(
        title: buildField("Cards Title 1"),
        minVerticalPadding: 30,
        leading: Image.network(
          'https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png',
          height: 100,
          width: 100,
        ),
        subtitle: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.black),
        ),
      ),
    ),
  );
}

Widget gradientCard() {
  return Container(
    height: 200,
    width: double.infinity,
    padding: const EdgeInsets.all(32),
    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.blue.shade100,
            Colors.blue.shade600,
            Colors.blue.shade50,
          ],
        ),
        borderRadius: BorderRadius.circular(16)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                buildField("Cards Title 3"),
                const Spacer(),
                Stack(
                  children: List.generate(
                    2,
                    (index) => Container(
                      margin: EdgeInsets.only(left: (15 * index).toDouble()),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white54),
                    ),
                  ),
                )
              ],
            ),
            buildField('1111 7679 8689 9700')
          ],
        ),
        const Text('\$0,000',
            style: TextStyle(fontSize: 24, color: Colors.white))
      ],
    ),
  );
}
