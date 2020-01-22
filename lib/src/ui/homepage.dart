import 'package:flutter/material.dart';
import 'package:resume_app/src/routing/application.dart';

class Homepage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resume maker"),),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(child: Text("CREATE "),
            onPressed: (){
             Application.router.navigateTo(context, "/userdetail");
            },)
          ],
        ),
      ),
    );
  }
}