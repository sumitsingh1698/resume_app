import 'package:fluro/fluro.dart';
import "package:flutter/material.dart";
import 'package:resume_app/src/routing/application.dart';
import 'package:resume_app/src/routing/routes.dart';
import 'package:resume_app/src/ui/user_detail.dart';

class MyApp extends StatelessWidget {

  MyApp(){
    final router = Router();
    Routes.configureRouter(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.red,
        buttonColor: Colors.red,
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      title: "Resume App",
      home: UserDetail(),
    );
  }
}
