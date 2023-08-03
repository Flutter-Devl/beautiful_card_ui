import 'package:flutter/material.dart';

Text buildField(String label) {
  return Text(
    label,
    style: const TextStyle(fontSize: 24, color: Colors.black),
  );
}

Widget textButton(String label) {
  return TextButton(
    style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
    child: Text(
      label,
      style: const TextStyle(color: Colors.purple),
    ),
    onPressed: () {},
  );
}
