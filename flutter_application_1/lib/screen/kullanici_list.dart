import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/menu_data.dart';
import 'package:flutter_application_1/widgets/appbar.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ListTwoView extends StatelessWidget {
  const ListTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(),
      drawer: drawer(),
      body: ListView(
        children: [
          inkListCardTwo(
              ad: "Ahmet", soyad: "Özlü", odano: "809", durum: 'Giriş Yapıldı', anarenk: Colors.green, resimid: 2),
          inkListCardTwo(
              ad: "Bilgehan", soyad: "Kabakaş", odano: "808", durum: 'Çıkış Yapıldı', anarenk: Colors.red, resimid: 1),
          inkListCardTwo(
              ad: "Alaattin",
              soyad: "Kızılboğa",
              odano: "807",
              durum: 'Giriş Yapıldı',
              anarenk: Colors.green,
              resimid: 3),
        ],
      ),
    );
  }

  InkWell inkListCardTwo(
      {required String ad,
      required String soyad,
      required String odano,
      required String durum,
      required Color anarenk,
      required int resimid}) {
    return InkWell(
      onTap: () {},
      child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: Column(
                children: [
                  Text(
                    '$durum',
                    style: TextStyle(color: anarenk),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/png/$resimid.png'),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ad:' + '   $ad'),
                        Text('Soyad:' + '   $soyad'),
                        Text('Oda no:' + '  $odano'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
