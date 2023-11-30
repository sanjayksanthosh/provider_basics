import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  // String MyText;
   SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var background_color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: background_color,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(widget.MyText),
            ElevatedButton(onPressed: (){
              setState(() {
                background_color =background_color == Colors.red? Colors.yellow:Colors.red;
              });
            }, child: Text('change color')),
            Container(
              child: ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('Back')),
            ),
          ],
        ),
      ),
    );
  }
}
