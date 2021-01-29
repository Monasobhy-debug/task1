import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // columnInsideRow -> Method display text in Column
  Widget columnInsideRow({String textNumber, String text}) {
    return Column(
      children: [
        Text(
          textNumber, // get Number as String
          style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Dancing Script',
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text, // get text
          style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Source Sans Pro',
              color: Color(0xFFBDBABD)),
        )
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // put my pic in circle
                CircleAvatar(
                  backgroundImage: AssetImage('images/anime.jpg'),
                  radius: 50.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                // display my name with new font and size
                Text(
                  'Mona Sobhy',
                  style: TextStyle(fontFamily: 'Pacifico', fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Quisque imperdiet nunc massa dictum volutpat. Etiam id orci ipsum. Integer id ex   dignissim',
                    textAlign: TextAlign.center, // put text at the center
                    style: TextStyle(
                      fontFamily: 'Bitter', // change the font of the text
                      fontSize: 16.0, //change size of the text
                    ),
                  ),
                ),

                Container(
                  height: 40.0,
                  width: 100.0,
                  //  Card -> a panel with slightly rounded corners and an elevation shadow.
                  child: Card(
                    elevation: 3,
                    color: Color(0xFFFF3F82),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'FOLLOW',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, //  make rows like this   [ *  *  * ]
                  children: [
                    columnInsideRow(textNumber: '8825', text: 'Followers'),
                    columnInsideRow(textNumber: '1766', text: 'Following'),
                    columnInsideRow(textNumber: '8.5', text: 'Social Score')
                  ],
                ),

                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, //  make rows like this   [ *  *  * ]
                  children: [
                    columnInsideRow(textNumber: '8825', text: 'Followers'),
                    columnInsideRow(textNumber: '1766', text: 'Following'),
                    columnInsideRow(textNumber: '8.5', text: 'Social Score')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
