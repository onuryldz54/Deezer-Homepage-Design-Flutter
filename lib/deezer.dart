import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:odev_6_deezer/muzik_kart/muzik_kart.dart';

class Deezer extends StatefulWidget {
  const Deezer({Key? key}) : super(key: key);

  @override
  State<Deezer> createState() => _DeezerState();
}

class _DeezerState extends State<Deezer> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text("Deezer",style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
          backgroundColor: Colors.white
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Padding(padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: const Text("Bugün, senin için hazırladık", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(5),
                    child: Stack(
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("resimler/sarkı_1.png")
                        ],
                        ),
                      ],
                    ),
                    ),
                    Padding(padding: const EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("resimler/sarkı_2.png")
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("resimler/sarkı_.png")
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("resimler/sarkı_3.png")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0,top: 10),
                  child: Text("Sana özel çalma listeleri",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),
                ),
                Spacer(),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MuzikKartWidget(
                      resim: "resimler/sarkı_flow.png",
                      listeAd: "Favorilerinden ve yeni şarkılardan oluşan sonsuz bir miks"
                  ),
                  MuzikKartWidget(
                      resim: "resimler/sarkı_4.png",
                      listeAd: "Ön planda Red Hot Chili Peppers, Kings of Leon, Nirvana, İncubus"
                  ),
                  MuzikKartWidget(
                      resim: "resimler/sarkı_7.png",
                      listeAd: "Ön planda Pantera, Kreator, Tankrad, Sofia Portanet"
                  ),
                  MuzikKartWidget(
                      resim: "resimler/sarkı_6.png",
                      listeAd: "Ön planda Hakan Altun, Müslüm Gürses, Hakan Taşıyan, Arabesk Remixci"
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0,top: 10),
                  child: Text("Haftanın yepyeni seçmeleri",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),
                ),
                Spacer(),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MuzikKartWidget(
                      resim: "resimler/sarkı_5.png",
                      listeAd: "Haftanın Yenileri"
                  ),
                  MuzikKartWidget(
                      resim: "resimler/sarkı_8.png",
                      listeAd: "Çok Taze"
                  ),
                  MuzikKartWidget(
                      resim: "resimler/sarkı_9.png",
                      listeAd: "RapTurk Yeniler"
                  ),
                  MuzikKartWidget(
                      resim: "resimler/sarkı_10.png",
                      listeAd: "Radar Weekly"
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.red, border: Border(top: BorderSide(color: Colors.white))
        ),
        child: CustomLineIndicatorBottomNavbar(
          selectedIconSize: 27,
          unselectedIconSize: 27,
          selectedColor: Colors.black,
          unSelectedColor: Colors.grey,
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          enableLineIndicator: true,
          lineIndicatorWidth: 1,
          customBottomBarItems: [
            CustomBottomBarItems(icon: Icons.music_note_outlined, label: "Müzik"),
            CustomBottomBarItems(icon: Icons.settings_voice_outlined, label: "Podcast'ler"),
            CustomBottomBarItems(icon: Icons.favorite_border_outlined, label: "Favoriler"),
            CustomBottomBarItems(icon: Icons.search, label: "Ara", ),
          ],
        ),
      ),
    );
  }
}
