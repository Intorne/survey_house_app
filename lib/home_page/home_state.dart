import 'package:flutter/material.dart';
import 'package:survey_house_app/files/menu_appbar.dart';

class HomeState extends StatefulWidget {
  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: SurveyAppBar(),
      drawer: DrawerNavegacao(),
      body: Center(child: Text("homepage"))
    );
  }
}
