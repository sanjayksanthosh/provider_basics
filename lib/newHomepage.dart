import 'package:flutter/Material.dart';
import 'package:provider/provider.dart';
import 'package:shared_pref/provider/myModel.dart';
import 'package:shared_pref/thirdPage.dart';

class NewHomePage extends StatelessWidget {
  NewHomePage({Key? key}) : super(key: key);
  TextEditingController a = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Consumer<MyModel>(
          builder: (context, value, child) {
            return Text(value.x);
          },
        ),
        TextField(controller: a),
        Consumer<MyModel>(
          builder: (context, value, child) {
            return ElevatedButton(
                onPressed: () {
                  value.addValueToX(a.text);
                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return ThirdPage();
                  },) );
                },
                child: Text('press'));
          },
        )
      ]),
    );
  }
}
