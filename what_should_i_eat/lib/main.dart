
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'What Should I Eat?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body:YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {


  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {

  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
List<String> corbaAdlari =[
  'Mercimek',
  'Tarhana',
  'Tavuksuyu',
  'Düğün Çorbası',
  'Yoğurtlu Çorba'
];
List<String> yemekAdlari = [
  'Karnıyarık',
  'Mantı',
  'Kuru Fasulye',
  'İçli Köfte',
  'Izgara Balık'
];
List<String> tatliAdlari = [
  'Kadayıf',
  'Baklava',
  'Kazandibi'
  'Sufle',
  'Dondurma'
];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(child: IconButton(

            icon: Image.asset('assets/corba_$corbaNo.jpg'),
            iconSize: 200,
            onPressed: () {
              setState(() {
                corbaNo = Random().nextInt(5);
                if( corbaNo == 0){
                  corbaNo++;
                }
                print('su anda corbaNo degeri: $corbaNo');
              });


            },
          ),),
          Text(corbaAdlari[corbaNo-1],style: TextStyle(fontSize: 20),),
          Expanded(child: IconButton(

            icon: Image.asset('assets/yemek_$yemekNo.jpg'),
            iconSize: 200,
            onPressed: () {
              setState(() {
                yemekNo = Random().nextInt(5);
                if( yemekNo == 0){
                  yemekNo++;
                }
                print('su anda yemekNo degeri: $yemekNo');
              });
            },
          ),),
          Text(yemekAdlari[yemekNo-1],style: TextStyle(fontSize: 20),),
          Expanded(child: IconButton(

            icon: Image.asset('assets/tatli_$tatliNo.jpg'),
            iconSize: 200,
            onPressed: () {
              setState(() {
                tatliNo = Random().nextInt(5);
                if( tatliNo == 0){
                  tatliNo++;
                }
                print('su anda tatliNo degeri: $tatliNo');
              });
            },
          ),),
          Text(tatliAdlari[tatliNo-1],style: TextStyle(fontSize: 20),),

        ],
      ),
    );
  }
}


