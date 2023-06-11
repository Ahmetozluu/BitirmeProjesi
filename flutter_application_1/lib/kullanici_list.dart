import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appbar.dart';
import 'package:flutter_application_1/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ListTwoView extends StatelessWidget {
  const ListTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(),
      body: ListView(
        children: [
          inkListCardTwo(
            titleName: 'Deluxe Aile',
            description: 'D .',
          )
          //image: 'assets/images/detail.jpeg'),
          /*listCardTwo(
              titleName: 'Deluxe Aile ',
              description:
                  'Deluxe odadaki tüm donanıma sahip olup, iki ayrı yataktan oluşan ilave bir yatak odası bulunmaktadır. İkinci odada ayrıca LCD-TV ve minibar mevcuttur.',
              image: 'assets/images/detail.jpeg'),
          listCardTwo(
              titleName: 'Deluxe Aile Odası',
              description:
                  'Deluxe odadaki tüm donanıma sahip olup, iki ayrı yataktan oluşan ilave bir yatak odası bulunmaktadır. İkinci odada ayrıca LCD-TV ve minibar mevcuttur.',
              image: 'assets/images/detail.jpeg')*/
        ],
      ),
    );
  }

  InkWell inkListCardTwo({String? titleName, String? image, String? description}) {
    return InkWell(
      onTap: () {},
      child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const Expanded(
              child: Column(
                children: [
                  Text(
                    'Giris yapıldı',
                    style: TextStyle(color: Colors.green),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/jpg/avatar.jpg'),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ad: Ahmet'),
                        Text('Soyad: Özlü'),
                        Text('Oda No: 809'),
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
