import 'dart:convert';

class Company {
  int id;
  String fullname;
  String? firstname;
  String? lastname;
  String? logoUrl;
  String? address;
  String? www;
  String? phone;
  String? email;
  String? description;
  String? splashUrl;
  String? slogan;
  String? lat;
  String? long;
  String? whatsAppPhone;
  String? instagram;
  String? facebook;
  String? twitter;
  String? youtube;
  String? spotify;
  String? tiktok;
  String? vk;
  String? ok;
  String? pinterest;
  String? swarm;
  String? linkedin;
  String? gdprlink;
  String? emailpermissionlink;

  Company(
      {required this.id,
      required this.fullname,
      this.firstname,
      this.lastname,
      this.logoUrl,
      this.www,
      this.phone,
      this.email,
      this.description,
      this.splashUrl,
      this.slogan,
      this.address,
      this.lat,
      this.long,
      this.whatsAppPhone,
      this.instagram,
      this.facebook,
      this.twitter,
      this.youtube,
      this.spotify,
      this.tiktok,
      this.vk,
      this.ok,
      this.pinterest,
      this.swarm,
      this.linkedin,
      this.gdprlink,
      this.emailpermissionlink});

  factory Company.fromJson(String str) => Company.fromMap(json.decode(str));

  //String toJson() => json.encode(toMap());

  factory Company.fromMap(Map<String, dynamic> json) => Company(
      id: json["ID"],
      fullname: json["FULLNAME"] ?? "",
      firstname: json["FIRSTNAME"] ?? "",
      lastname: json["LASTNAME"] ?? "",
      logoUrl: json["LOGOURL"] ?? "",
      www: json["WWW"] ?? "",
      phone: json["PHONE"] ?? "",
      email: json["EMAIL"] ?? "",
      description: json["DESCRIPTION"] ?? "",
      splashUrl: json["SPLASHURL"] ?? "",
      slogan: json["SLOGAN"] ?? "",
      address: json["ADDRESS"] ?? "",
      lat: json["LAT"] ?? "",
      long: json["LONG"] ?? "",
      whatsAppPhone: json["WHATSAPPROUTE"] ?? "",
      instagram: json["INSTAGRAM"] ?? "",
      facebook: json["FACEBOOK"] ?? "",
      twitter: json["TWITTER"] ?? "",
      youtube: json["YOUTUBE"] ?? "",
      spotify: json["SPOTIFY"] ?? "",
      tiktok: json["TIKTOK"] ?? "",
      vk: json["VK"] ?? "",
      ok: json["OK"] ?? "",
      pinterest: json["PINTEREST"] ?? "",
      swarm: json["SWARM"] ?? "",
      linkedin: json["LINKEDIN"] ?? "",
      gdprlink: json["GDPRLINK"] ?? "",
      emailpermissionlink: json["EMAILPERMISSIONLINK"] ?? "");
}