import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:resume_app/src/ui/convert_pdf.dart';
import 'package:resume_app/src/ui/textpage.dart';
import 'package:resume_app/src/ui/user_detail.dart';

var userDetailHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,dynamic> parms){
    return UserDetail();
  });

var convertPdfHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,dynamic> parms){
    return ConvertPdf();
  });
  var textpageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,dynamic> parms){
    return TextFile();
  });
