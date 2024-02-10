import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:span_and_shade/spanAndShade.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCk4pNd6bbGo5sVr-rIBV4lA-cDpjnhtxM",
        appId: "1:174411998500:web:cbff75191628169f36ffb1",
        messagingSenderId: "174411998500",
        projectId: "spanandshade-5ee16"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Span & Shade',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SAS(),
    );
  }
}
