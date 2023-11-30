import 'package:flutter/material.dart';
import 'package:shared_pref/provider/myModel.dart';
import 'package:shared_pref/secondPage.dart';
import 'package:shared_pref/thirdPage.dart';
import 'package:provider/provider.dart';

import 'homePage.dart';
import 'newHomepage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // routes: {
  // '/second': (context) => SecondPage(),
  // },
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:NewHomePage()
    );
  }
}
