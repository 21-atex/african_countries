// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_5/items.dart';

class NewPage extends StatelessWidget{
  const NewPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(countryList[0].flag, width: 500)
        ]
      )
    );
  }
}