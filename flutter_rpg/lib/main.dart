import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/services/character_store.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:provider/provider.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import 'services/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChangeNotifierProvider(
    create: (context) => CharacterStore(),
    child: MaterialApp(
      theme: primaryTheme,
      home: const Home(),
    ),
  ));
}


// testPage
class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
        backgroundColor: Colors.grey,
      ),
      body: const Text('sandbox'),
    );
  }
}