import 'package:flutter/material.dart';
import 'package:shared_pref/secondPage.dart';

class Homepage extends StatelessWidget {
   Homepage({Key? key}) : super(key: key);
TextEditingController myController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        TextField(controller: myController),
        ElevatedButton(
            onPressed: () {
             // Navigator.pushNamed(context, '/Second');
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return SecondPage();
             },));
            },
            child: Text('Press me'))
      ]),
    );
  }
}
// Navigator.pushNamed(context, '/second');
