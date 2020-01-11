import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/text_form_field.dart';

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    Map<String,String> data = Map<String,String>();

    return Scaffold(
      appBar: AppBar(title:  Text("Resume App"),),
      body: Container(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(

                children: <Widget>[

                    TextFormfield(type: "Name",data: data),
                    SizedBox(height: 30,),
                    TextFormfield(type: "Email",data: data),
                    SizedBox(height: 30,),
                    TextFormfield(type: "Mobile No",data: data),
                    SizedBox(height: 30,),
                    TextFormfield(type: "Address",data: data),
                    SizedBox(height: 30,),
                    SizedBox(height: 30,),
                    RaisedButton(
                     padding: EdgeInsets.all(10.0),
                     onPressed: (){
                       if(formkey.currentState.validate()){

                         formkey.currentState.save();
                         data.forEach((String s,String a)=> print("$s   s:  $a \n"));

                         Navigator.popAndPushNamed(context, "/convertpdf");
                       }

                     },
                      child: Text("Next"),
                    )
                ],
              ),
            ),
          )
      ),
    );
  }
}
