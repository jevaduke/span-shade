import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

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
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 100.0),
            child: Text("Our Work"),
          ),
          Padding(
            padding: EdgeInsets.only(right: 100.0),
            child: Text("About"),
          ),
          Padding(
            padding: EdgeInsets.only(right: 100.0),
            child: Text("Contact"),
          ),
        ],
      ),
    );
  }

  spanAndShadeText() {
    return Row(
      children: [
        Text("Span &   "),
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
