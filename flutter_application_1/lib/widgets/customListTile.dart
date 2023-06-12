import 'package:flutter/material.dart';
import '../utils/configuration.dart';

Widget customListTile({Function? onClick, required String name, Icon? icon}) {
  return InkWell(
    onTap: () => onClick!(),
    child: ListTile(
      leading:
          icon ?? const Icon(Icons.arrow_forward_outlined, color: mainColor),
      title: Text(
        name,
        style: const TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 16),
      ),
    ),
  );
}