import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/src/routing/application.dart';

import '../widgets/text_form_field.dart';

class UserDetail extends StatefulWidget {

  @override
  _UserDetailState createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    Map<String, String> data = Map<String, String>();
    print("ram ram");
    return Scaffold(
      floatingActionButton: Container(
        width: 50,
        child: FloatingActionButton(
          splashColor: Colors.red,
          child: Icon(
            Icons.navigate_next,
          ),
          onPressed: () {
            if (formkey.currentState.validate()) {
              formkey.currentState.save();
              data.forEach((String s, String a) => print("$s   s:  $a \n"));
              Application.router.navigateTo(context, "/textpage");

            }
          },
        ),
      ),
      appBar: AppBar(
        title: Text("Resume Detail"),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              TextFormfield(type: "Name", data: data),
              TextFormfield(type: "Email", data: data),
              TextFormfield(type: "Mobile No", data: data),
              TextFormfield(type: "Address", data: data),
              RaisedButton(
                padding: EdgeInsets.all(10.0),
                onPressed: () {
                  if (formkey.currentState.validate()) {
                    formkey.currentState.save();
                    data.forEach(
                        (String s, String a) => print("$s   s:  $a \n"));

                    Navigator.popAndPushNamed(context, "/convertpdf");
                  }
                },
                child: Text("Next"),
              )
            ],
          ),
        ),
      )),
    );
  }
}
