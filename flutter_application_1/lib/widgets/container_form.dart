import 'package:flutter/material.dart';

Widget containerForm({String? title = ""}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      border: Border.all(
        width: 1.1,
        color: Colors.grey,
      ),
    ),
    padding: const EdgeInsets.all(6),
    margin: const EdgeInsets.all(10),
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: title,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        isDense: true,
      ),
    ),
  );
}
