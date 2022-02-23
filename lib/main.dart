import 'package:ferno_app/screens/home_page.dart';
import 'package:ferno_app/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => LoginPage(),
        '/HomePage': (BuildContext context) => HomePage(),/*
        '/TelaMinhaCarteira': (BuildContext context) =>
            const TelaMinhaCarteira(),
        '/TelaLegislacao': (BuildContext context) => const TelaLegislacao(),
        '/TelaContato': (BuildContext context) => const TelaContato(),
        '/TelaDeslocamento': (BuildContext context) => TelaDeslocamento(),
        '/TelaDocumentos': (BuildContext context) => TelaDocumentos(),*/

      },
      theme: ThemeData(
       // textTheme: GoogleFonts.robotoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'FERNO',
      initialRoute: '/',
    );
  }
}