import 'package:flutter/material.dart';
import 'package:spalsh_screen_and_login/pages/details_page.dart';
import 'package:spalsh_screen_and_login/pages/home_page.dart';
import 'package:spalsh_screen_and_login/pages/login_page.dart';
import 'package:spalsh_screen_and_login/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.green, // Cor de fundo da AppBar
            centerTitle: true, // Centraliza o título da AppBar
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            titleTextStyle: TextStyle(color: Colors.white, fontSize:25)
            // Define a cor do ícone (seta) como branca
            ),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => const HomePage(),
        '/details': (_) => const DetailsPage()
      },
    );
  }
}
