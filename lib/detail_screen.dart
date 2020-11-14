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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(kehamilan.imageAsset),
                        ))),
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
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
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
              padding: EdgeInsets.all(16.0),
              child: Text(
                kehamilan.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        kehamilan.openDays,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(Icons.access_time),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              kehamilan.openTime,
                              style: informationTextStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(Icons.monetization_on),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              kehamilan.ticketPrice,
                              style: informationTextStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: kehamilan.imageUrls.map((url) {
                  return Padding(
                    padding: EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
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
