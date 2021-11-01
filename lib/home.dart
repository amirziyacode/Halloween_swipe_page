import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // images of list

  List<dynamic> images = [
    {
      "images":
          "https://cdni.iconscout.com/illustration/premium/thumb/halloween-4126006-3449385.png"
    },
    {
      "images":
          "https://cdni.iconscout.com/illustration/premium/thumb/halloween-background-with-zombies-hand-in-graveyard-and-the-full-moon-1861461-1580202.png"
    },
    {
      "images":
          "https://cdni.iconscout.com/illustration/premium/thumb/halloween-graveyard-4126001-3449380.png"
    }
  ];

  // Text of list
  List<dynamic> Textsub = [
    {"Text": "Happy Hallo Ween !"},
    {"Text": "Which night"},
    {"Text": "Special time near you... "}
  ];

  List<dynamic> Textin = [
    {"Text": "Halloween’s origins date back to the ancient Celtic festival of Samhain"},
    {"Text": "This day marked the end of summer and the harvest and the beginning of the dark"},
    {"Text": "In addition to causing trouble and damaging crops"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Home page
        backgroundColor: const Color(0xFF101010),
        body: ConcentricPageView(
          verticalPosition: 0.85,
            colors: const <Color>[Colors.deepOrange, Colors.orange, Colors.red],
            itemBuilder: (int index, double value) {
              int pageIndex = (index % images.length);
              int TextIndex = (index % Textsub.length);
              int Textinline = (index % Textin.length);
              return SafeArea(
                child: Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      CircleAvatar(
                        backgroundImage:
                         NetworkImage(images[pageIndex]['images']),
                        maxRadius: 180.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(Textsub[TextIndex]['Text'],style:GoogleFonts.acme(
                        color: Colors.white,
                        fontSize: 30.0,
                      )),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: Text(Textin[Textinline]['Text'],style:GoogleFonts.abel(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                      ),
                    ],
                  ),
                ),
              );
            })
        );
  }
}
