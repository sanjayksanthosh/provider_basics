import 'package:flutter/Material.dart';
import 'package:provider/provider.dart';
import 'package:shared_pref/provider/myModel.dart';

class ThirdPage extends StatelessWidget {
   ThirdPage({Key? key}) : super(key: key);
TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var myModel = Provider.of<MyModel>(context);
    return Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
    Consumer<MyModel>(builder: (context, value, child) {
      return Text(value.x);
    },),

    ]),);
  }
}
