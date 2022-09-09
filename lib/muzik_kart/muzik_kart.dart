import 'package:flutter/material.dart';

class MuzikKartWidget extends StatelessWidget {
  final String resim, listeAd;

  MuzikKartWidget({
    required this.resim,
    required this.listeAd
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 140,
        height: 190,
        decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),

        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(resim,scale: 1,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("$listeAd",style: const TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.black87),),
            ),
          ],

        ),
      ),
    );
  }
}