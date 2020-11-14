import 'package:dicoding_pemula/model/usia_kehamilan.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_pemula/detail_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.reorder),
        title: Text('Perkembangan Janin'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(238, 116, 127, 70),
                  Color.fromRGBO(247, 149, 164, 70)
                ],
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight),
            image: DecorationImage(
                image: AssetImage('images/brick-wall.png'),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(238, 116, 127, 70),
                Color.fromRGBO(247, 149, 164, 70)
              ],
              begin: FractionalOffset.bottomLeft,
              end: FractionalOffset.topRight),
          image: DecorationImage(
              image: AssetImage('images/brick-wall.png'),
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat),
        ),
        child: ListView(
          children: usiaKehamilan.map((kehamilan) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.red,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(kehamilan: kehamilan);
                  }));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  child: Card(
                    color: Color.fromRGBO(238, 116, 127, 100),
                    elevation: 10,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    kehamilan.usia,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(kehamilan.snippet),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        'Read more ...',
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 15),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Hero(
                              tag: Text('hero'),
                              child: Container(
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        image: AssetImage(kehamilan.imageAsset),
                                        fit: BoxFit.fill)),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

var usiaKehamilan = [
  UsiaKehamilan(
    usia: 'Kehamilan usia 2 minggu',
    snippet: 'Fertilisasi',
    description:
        'Ini adalah minggu yang berpotensi mengubah hidup kamu. Kamu akan berovulasi, dan jika sel telur bertemu dengan sperma, Kamu akan segera hamil!',
    imageAsset: 'images/usia-minggu-ke-2.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 3 minggu',
    snippet: 'Implantasi',
    description:
        'Bayi kamu berukuran bola kecil - disebut blastokista - terdiri dari beberapa ratus sel yang berkembang biak dengan cepat.',
    imageAsset: 'images/usia-minggu-ke-3.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 4 minggu',
    snippet: 'Bayi Anda seukuran biji poppy',
    description:
        'Jauh di dalam rahim Kamu, bayi Kamu berbentuk embrio yang terdiri dari dua lapisan, dan plasenta primitif kamu sedang berkembang.',
    imageAsset: 'images/usia-minggu-ke-4.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 5 minggu',
    snippet: 'Bayi Anda seukuran biji wijen',
    description:
        'Embrio kecil kamu tumbuh seperti dengan sangat cepat, dan kamu mungkin memperhatikan ketidaknyamanan saat hamil seperti payudara yang sakit dan kelelahan.',
    imageAsset: 'images/usia-minggu-ke-5.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 6 minggu',
    snippet: 'Bayi Anda seukuran lentil',
    description:
        'Hidung, mulut, dan telinga bayi Kamu mulai terbentuk. Kamu mungkin mengalami morning sickness dan bercak.',
    imageAsset: 'images/usia-minggu-ke-6.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 7 minggu',
    snippet: 'Bayi Anda seukuran blueberry',
    description:
        'Bayi Kamu - masih berukuran embrio dengan ekor kecil - sedang membentuk tangan dan kaki. Rahim Kamu Membesar dua kali lipat.',
    imageAsset: 'images/usia-minggu-ke-7.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 8 minggu',
    snippet: 'Bayi Anda seukuran kacang merah',
    description:
        'Bayi Kamu terus bergerak, meskipun Kamu tidak bisa merasakannya. Sementara itu, Kamu mungkin membuat keputusan tentang tes prenatal.',
    imageAsset: 'images/usia-minggu-ke-8.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 9 minggu',
    snippet: 'Bayi Anda seukuran buah anggur',
    description:
        'Panjangnya hampir 2.54 cm sekarang, bayimu mulai terlihat lebih manusiawi. Kamu mungkin pernah memperhatikan pinggang Kamu menebal.',
    imageAsset: 'images/usia-minggu-ke-9.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 10 minggu',
    snippet: 'Bayi Anda seukuran kumquat',
    description:
        'Bayi Kamu telah menyelesaikan bagian terpenting dari perkembangan! Organ dan struktur sudah siap dan siap untuk tumbuh.',
    imageAsset: 'images/usia-minggu-ke-10.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 11 minggu',
    snippet: 'Bayi Anda seukuran buah ara',
    description:
        'Tangan bayi Kamu akan segera terbuka dan mengepal, dan tunas gigi kecil muncul di bawah gusi',
    imageAsset: 'images/usia-minggu-ke-11.jpg',
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 12 minggu',
    snippet: 'Bayi Anda seukuran jeruk nipis',
    description:
        'Jari kaki mungil si kecil bisa melengkung, otaknya tumbuh dengan cepat, dan ginjalnya mulai mengeluarkan urin',
    imageAsset: 'images/usia-minggu-ke-12.jpg',
    symptomsTitle: [
      'Ovulation symptoms',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 13 minggu',
    snippet: 'Bayi Anda seukuran buah peapod',
    description:
        'Ini minggu terakhir trimester pertama! Bayi Kamu sekarang memiliki sidik jari yang sangat indah dan panjangnya hampir 3 inci.',
    imageAsset: 'images/usia-minggu-ke-13.jpg',
  ),
];
