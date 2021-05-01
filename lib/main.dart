import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/book_list_test.dart';
import 'package:portfolio/main_modal.dart';
import 'package:portfolio/next_page.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
          title: Text('ポートフォリオ'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child,) {
              return Center(
                child: Column(
                  children: [
                    Text(
                        model.stock,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    ),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookList()),
                        );
                      },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
