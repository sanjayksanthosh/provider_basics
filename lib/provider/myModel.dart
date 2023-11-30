import 'package:flutter/Material.dart';

class MyModel extends ChangeNotifier {
  String data = '';
  String x= '';

  void addValueToX(String value){
    x = value;
    notifyListeners();
  }



  void setData(String geData) {
    data = geData;
    notifyListeners();
  }
}