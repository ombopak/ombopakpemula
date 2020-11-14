import 'package:dicoding_pemula/model/usia_kehamilan.dart';
import 'package:flutter/material.dart';

var informationTextStyle = TextStyle(
  fontFamily: 'Oxygen',
);

class DetailScreen extends StatelessWidget {
  final UsiaKehamilan kehamilan;

  DetailScreen({@required this.kehamilan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SafeArea(
                        child: Hero(
                      tag: Text('hero'),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(kehamilan.imageAsset),
                        ),
                      ),
                    )),
                    SafeArea(
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }),
                                FavouriteButton(),
                              ]),
                        ),
                      ]),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 0.50),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(bottom: 15.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5.0),
                              child: Text(
                                kehamilan.usia,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Card(
                    color: Color.fromRGBO(238, 116, 127, 100),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        kehamilan.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Oxygen',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    onPressed: () {
                      //Navigator.of(context).pushNamed(HomePage.tag);
                    },
                    padding: EdgeInsets.all(12),
                    color: Color.fromRGBO(238, 116, 127, 1),
                    child: Text('Gejala kehamilan',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    onPressed: () {
                      //Navigator.of(context).pushNamed(HomePage.tag);
                    },
                    padding: EdgeInsets.all(12),
                    color: Color.fromRGBO(238, 116, 127, 1),
                    child: Text('Daftar periksa kehamilan',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.blue,
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

var efekKehamilan = [
  UsiaKehamilan(
    symptomsTitle: [
      'Ovulation symptoms',
      'Slippery cervical mucus',
      'Mild cramping',
      'Sexy feelings',
      'Strong smells',
      'Tender breasts',
      'Cervical changes',
      'A boost in your basal body temperature (BBT)',
    ],
    symptomsText: [
      'Youre not pregnant yet, but you may be able to detect signs that you\'re ovulating. Learning how to identify ovulation symptoms can help you plan when to have sex if you want to get pregnant. Watch out for these ovulation symptoms.',
      'Cervical mucus is the vaginal discharge you sometimes find in your underwear. In the days around ovulation, it\'ll be clear, slippery, and stretchy (like raw egg whites).',
      'Some women notice mild cramps or twinges of pain in the abdomen, or a one-sided backache, around the time of ovulation. This is known as mittelschmerz – German for \'middle pain.\'',
      'You may feel flirty and your body odor may even be more attractive to men around the time you\'re fertile.',
      'If odors are suddenly more intense, it may be your body\'s way of helping you home in on male pheromones.',
      'Hormonal changes around ovulation may make your breasts feel a bit full or sore.',
      'During ovulation, your cervix is softer, higher, wetter, and more open. You can feel these changes if you reach inside your vagina with a finger to examine your cervix, though you may have to check it daily to recognize the differences.',
      'You can use a special thermometer to take your BBT every morning. On the day after you ovulate, it goes up a bit and stays elevated until your next period.',
    ],
    checklistTitle: [
      'Take your vitamins',
      'See your healthcare provider',
      'Consider this blood test',
      'Make time to make love',
    ],
    checklistText: [
      'It\'s not too early to take a prenatal vitamin. Make sure it contains at least 400 micrograms of folic acid to reduce your baby\'s risk of certain birth defects.',
      'Have a preconception checkup to make sure your body is in the best possible shape for baby-making. For example, find out whether you should stop taking any prescription or over-the-counter drugs or supplements.',
      'You and your partner may want to get genetic carrier screening to see whether you carry genes that would put your baby at risk for serious inherited illnesses.',
      'Have sex every other day to boost your chances of conceiving. Find out how long it usually takes to get pregnant – most couples need more than a few tries before they can announce that a baby\'s on the way.',
    ],
  ),
];
