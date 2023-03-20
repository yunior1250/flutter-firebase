import 'package:flutter/material.dart';
//importacinoes de firebase

import 'package:firebase_core/firebase_core.dart';
//Paginas
import 'package:flutter_dev1/pages/add_name_Page.dart';
import 'package:flutter_dev1/pages/edit_name_page.dart';
import 'package:flutter_dev1/pages/home_page.dart';
import 'firebase_options.dart';
//servicio de firebase
import 'package:flutter_dev1/services/firebase_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const AddNamePage(),
        '/edit': (context) => const EditNamePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
