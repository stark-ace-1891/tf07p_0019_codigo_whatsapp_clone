import 'package:flutter/material.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Clone",
      debugShowCheckedModeBanner: false,
      home: HomPage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color(0xff065e52),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xff01c851),
          )),
    );
  }
}
