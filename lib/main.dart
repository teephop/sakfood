import 'package:flutter/material.dart';
import 'package:sakfood/screens/home.dart';
void main(){runApp(MyApp());}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(primarySwatch:Colors.green),

      debugShowCheckedModeBanner: false,
      title: 'Sak Food',
      home: Home(),
    );
  }
}
