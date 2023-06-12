import 'dart:convert';
import '../utils/methods.dart';


class Menu {
  int id;
  String? title;
  String? subtitle;
  String? route;
  String? content;
  String? url;
  String? imageUrl;
  String name;
  int? typeid;
  String? firstButtonText;
  String? secondButtonText;
  int? masterId;
  String? master;
  List<int>? items;
  int? nextMenuId;
  String? icon;
  dynamic detailArgument;
  String? buttonText;
  int? firstMenuId;
  int? secondMenuId;
  String? itemsString;
  String? timeOpen;
  String? timeClose;
  String? price;
  String? currency;
  int? menumenuid;

  Menu(
      {required this.id,
      required this.name,
      this.icon,
      this.route,
      this.typeid,
      this.title,
      this.subtitle,
      this.imageUrl,
      this.url,
      this.items,
      this.itemsString,
      this.content,
      this.firstButtonText,
      this.secondButtonText,
      this.master,
      this.masterId,
      this.firstMenuId,
      this.secondMenuId,
      this.buttonText,
      this.timeOpen,
      this.timeClose,
      this.price,
      this.currency,
      this.menumenuid});

  factory Menu.fromJson(String str) => Menu.fromMap(json.decode(str));

  //String toJson() => json.encode(toMap());

  factory Menu.fromMap(Map<String, dynamic> json) => Menu(
      id: json["ID"],
      name: json["NAME"],
      icon: json["ICON"],
      route: parseRoute(json["ROUTE"]),
      typeid: json["TYPEID"],
      title: json["TITLE"],
      subtitle: json["SUBTITLE"],
      imageUrl: json["IMAGEURL"],
      url: json["URL"],
      items: parseArray(json["ITEMS"]),
      content: json["PAGECONTENT"],
      firstButtonText: json["FIRSTBUTTONTEXT"],
      secondButtonText: json["SECONDBUTTONTEXT"],
      master: json["MASTER"],
      masterId: json["MASTERID"],
      buttonText: json["BUTTONTEXT"],
      firstMenuId: json["FIRSTMENUID"],
      secondMenuId: json["SECONDMENUID"],
      timeOpen: json["TIMEOPEN"],
      timeClose: json["TIMECLOSE"],
      price: json["PRICE"],
      currency: json["CURRENCY"],
      menumenuid: json["MENUMENUID"]);
}