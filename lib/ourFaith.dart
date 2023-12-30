import 'package:flutter/material.dart';

class OurFaith extends StatefulWidget {
  const OurFaith({super.key});

  @override
  State<OurFaith> createState() => _OurFaithState();
}

class _OurFaithState extends State<OurFaith> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Our Faith",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                  """The acceptance of certain realities will be always possoible with our span and shade team. We constantly thrive for our customer satisfaction only."""),
            ),
          ],
        ),
      ),
    );
  }
}
