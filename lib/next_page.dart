import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: Text('次の画面'),
          actions: <Widget>[
            Icon(Icons.add),
            Icon(Icons.share),
          ]
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(name),
            RaisedButton(
              child: Text('戻る'),
              onPressed: (){
                Navigator.pop(context,'ドーン');
              },
            ),
            RaisedButton(
              child: Text('帰る'),
              onPressed: (){
                Navigator.pop(context,'イエイ');
              },
            ),
          ],
        ),
      ),
    );
  }
}
