import 'package:fluro/fluro.dart';
import 'package:resume_app/src/routing/route_handlers.dart';

class Routes{

     static const main = "/";
     static const userDetail = "/userdetail";
     static const convertPdf = "/convertpdf";
     static const textpage = "/textpage";
     static void configureRouter(Router router){

         router.define(userDetail, handler: userDetailHandler);
         router.define(convertPdf, handler: convertPdfHandler);
         router.define(textpage, handler: textpageHandler);
     }
}