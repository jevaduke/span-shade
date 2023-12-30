import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';
import 'package:span_and_shade/aboutUs.dart';
import 'package:span_and_shade/carosel.dart';
import 'package:span_and_shade/contact.dart';
import 'package:span_and_shade/ourFaith.dart';
import 'package:span_and_shade/ourWork.dart';

class SAS extends StatefulWidget {
  const SAS({super.key});

  @override
  State<SAS> createState() => _SASState();
}

class _SASState extends State<SAS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: spanAndShadeText(),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 100.0),
            child: GestureDetector(
              child: const Text(
                "Our Work",
              ),
              onTap: () {
                setState(() {
                  
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 100.0),
            child: GestureDetector(
              child: const Text(
                "About Us",
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 100.0),
            child: GestureDetector(
              child: const Text(
                "Contact",
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contact()),
                );
              },
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Carosel(),
              OurFaith(),
              OurWork(),
              AboutUs(),
              Contact(),
            ],
          ),
        ),
      ),
    );
  }

  spanAndShadeText() {
    return Row(
      children: [
        const Text("Span &   "),
        RoundedBackgroundText(
          'Shade',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          backgroundColor: Colors.black,
        ),
      ],
    );
  }
}
