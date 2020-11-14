import 'package:dicoding_pemula/model/usia_kehamilan.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_pemula/detail_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perkembangan Janin'),
      ),
      body: ListView(
        children: usiaKehamilan.map((kehamilan) {
          return Padding(
            padding: const EdgeInsets.only(top: 2.5, bottom: 5.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(kehamilan: kehamilan);
                }));
              },
              child: Card(
                elevation: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 1.0)
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              kehamilan.usia,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(kehamilan.snippet),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Read more ...',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(kehamilan.imageAsset)),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
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
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'images/usia-minggu-ke-2.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 3 minggu',
    snippet: 'Implantasi',
    description:
        'Bayi kamu berukuran bola kecil - disebut blastokista - terdiri dari beberapa ratus sel yang berkembang biak dengan cepat.',
    openDays: 'Open Tuesday - Saturday',
    openTime: '09:00 - 14:30',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/usia-minggu-ke-3.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/12/6b/63/0b/bosscha-observatory.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/0d/6a/88/9b/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/3f/04/39/p-20171111-110220-largejpg.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 4 minggu',
    snippet: 'Bayi Anda seukuran biji poppy',
    description:
        'Jauh di dalam rahim Kamu, bayi Kamu berbentuk embrio yang terdiri dari dua lapisan, dan plasenta primitif kamu sedang berkembang.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'images/usia-minggu-ke-4.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/c2/e7/e6/quotes-kota-bandung.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/17/f4/44/01/jalan-asia-afrika.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/0a/ef/36/e2/jalan-asia-afrika.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 5 minggu',
    snippet: 'Bayi Anda seukuran biji wijen',
    description:
        'Embrio kecil kamu tumbuh seperti dengan sangat cepat, dan kamu mungkin memperhatikan ketidaknyamanan saat hamil seperti payudara yang sakit dan kelelahan.',
    openDays: 'Open Everyday',
    openTime: '06:00 - 17:00',
    ticketPrice: 'Rp 3000',
    imageAsset: 'images/usia-minggu-ke-5.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 6 minggu',
    snippet: 'Bayi Anda seukuran lentil',
    description:
        'Hidung, mulut, dan telinga bayi Kamu mulai terbentuk. Kamu mungkin mengalami morning sickness dan bercak.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'images/usia-minggu-ke-6.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/08/8b/87/50/bandung-movie-park.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/17/67/d5/53/img-20190505-114509-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/09/73/33/05/taman-film-pasopati.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 7 minggu',
    snippet: 'Bayi Anda seukuran blueberry',
    description:
        'Bayi Kamu - masih berukuran embrio dengan ekor kecil - sedang membentuk tangan dan kaki. Rahim Kamu Membesar dua kali lipat.',
    openDays: 'Open Saturday - Thursday',
    openTime: '09:00 - 15:30',
    ticketPrice: 'Rp 3000',
    imageAsset: 'images/usia-minggu-ke-7.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-w/19/1c/8e/f7/geology-museum.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/a7/35/b7/geology-museum.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/1a/55/e0/dc/geology-museum.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 8 minggu',
    snippet: 'Bayi Anda seukuran kacang merah',
    description:
        'Bayi Kamu terus bergerak, meskipun Kamu tidak bisa merasakannya. Sementara itu, Kamu mungkin membuat keputusan tentang tes prenatal.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/usia-minggu-ke-8.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/17/f9/ff/f8/floating-market-bandung.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/1a/86/d3/cd/20200103-125059-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/19/ce/b4/9b/img20181224120857-largejpg.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 9 minggu',
    snippet: 'Bayi Anda seukuran buah anggur',
    description:
        'Panjangnya hampir 2.54 cm sekarang, bayimu mulai terlihat lebih manusiawi. Kamu mungkin pernah memperhatikan pinggang Kamu menebal.',
    openDays: 'Open Everyday',
    openTime: '07:00 - 17:00',
    ticketPrice: 'Rp 15000',
    imageAsset: 'images/usia-minggu-ke-9.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/0b/6e/7c/ce/rocks-sticking-out-of.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/0b/35/30/14/white-crater.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0a/8b/9a/79/2945-t00572-www-initempatwisat.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 10 minggu',
    snippet: 'Bayi Anda seukuran kumquat',
    description:
        'Bayi Kamu telah menyelesaikan bagian terpenting dari perkembangan! Organ dan struktur sudah siap dan siap untuk tumbuh.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/usia-minggu-ke-10.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/2f/87/ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/27/0a/ranca-upas.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 11 minggu',
    snippet: 'Bayi Anda seukuran buah ara',
    description:
        'Tangan bayi Kamu akan segera terbuka dan mengepal, dan tunas gigi kecil muncul di bawah gusi',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/usia-minggu-ke-11.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/2f/87/ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/27/0a/ranca-upas.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 12 minggu',
    snippet: 'Bayi Anda seukuran jeruk nipis',
    description:
        'Jari kaki mungil si kecil bisa melengkung, otaknya tumbuh dengan cepat, dan ginjalnya mulai mengeluarkan urin',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/usia-minggu-ke-12.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/2f/87/ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/27/0a/ranca-upas.jpg',
    ],
  ),
  UsiaKehamilan(
    usia: 'Kehamilan usia 13 minggu',
    snippet: 'Bayi Anda seukuran buah peapod',
    description:
        'Ini minggu terakhir trimester pertama! Bayi Kamu sekarang memiliki sidik jari yang sangat indah dan panjangnya hampir 3 inci.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/usia-minggu-ke-13.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/2f/87/ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/27/0a/ranca-upas.jpg',
    ],
  ),
];
