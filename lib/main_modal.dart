import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String stock = '株だね';

  void changestock(){
    stock = '株';
    notifyListeners();
  }
}
