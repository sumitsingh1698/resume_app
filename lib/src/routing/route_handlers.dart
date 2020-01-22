import 'dart:convert';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:resume_app/src/model/Detail.dart';
import 'package:resume_app/src/ui/convert_pdf.dart';
import 'package:resume_app/src/ui/textpage.dart';
import 'package:resume_app/src/ui/user_detail.dart';

var userDetailHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,dynamic> parms){
    return UserDetail();
  });

var convertPdfHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,dynamic> parms){
    Map<String,dynamic> data = jsonDecode(parms['data'][0].toString());
    Detail userDetail = new Detail(name: data['Name'],email: data['Email'],phoneno: data['Mobileno'],address: data['Address']);
    return ConvertPdf(userDetail);
  });
  var textpageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,dynamic> parms){
    return TextFile();
  });
