import 'dart:convert';



parseRoute(route) {
  return "/${(route ?? "")}";
}



parseArray(value) {
  List<int> newList = [];
  if (value == null && value == "") return newList;
  var list = json.decode(value);
  for (var val in list) {
    newList.add(val);
  }
  return newList;
}