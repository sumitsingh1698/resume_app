import 'package:flutter/widgets.dart';

class Detail{

  String _name;
  String _email;
  String _phoneno;
  String _address;

  // getters

  String get getName{
    return _name; 
  }
  String get getEmail{
    return _email; 
  }
  String get getPhoneno{
    return _phoneno; 
  }
  String get getAddress{
    return _address; 
  }

  // setter

  set setName(String name){
    this._name = name; 
  }
  set setEmail(String email){
    this._email = email; 
  }
  set setPhoneno(String phoneno){
    this._phoneno = phoneno; 
  }
  set setAddress(String address){
    this._address = address; 
  }

  //contructor

   Detail({@required name,@required email,@required phoneno,@required address}){
     this._name = name;
     this._address= address;
     this._email = email;
     this._phoneno = phoneno;  
   }
   
}