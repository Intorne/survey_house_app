import 'package:flutter/material.dart';
import 'package:survey_house_app/calendar_page/calendar_state.dart';
import 'package:survey_house_app/home_page/home_state.dart';
import 'package:survey_house_app/locations_page/location_state.dart';
import 'package:survey_house_app/login_page/login_state.dart';
import 'package:survey_house_app/reports_page/report_state.dart';
import 'package:survey_house_app/surveys_page/survey_state.dart';
import 'package:survey_house_app/warnings_page/warning_state.dart';

class SurveyAppBar extends AppBar {
  SurveyAppBar({Key key, Widget title})
      : super(
    key: key,
    title: Image.asset(
      'imagens/logo_laranja_branco.png',
      width: 100.0,
    ),
    titleSpacing: 0.0,
    leading: Builder(
      builder: (context) => IconButton(
        icon: new Icon(
          Icons.menu,
          size: 24,
          color: Colors.orange,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
  );
}

class DrawerNavegacao extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset("imagens/logoPB.png"),
            decoration: BoxDecoration(
                gradient: (LinearGradient(colors: [Colors.deepOrange, Colors.orange])),
            ),
          ),
          ListTile(
            title: Row(children: [
              Icon(Icons.home),
              Text("Home"),
            ],),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            title: Row(children: [
              Icon(Icons.calendar_today),
              Text("Calendário"),
            ],),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Calendar()));
            },
          ),
          ListTile(
              title: Row(children: [
                Icon(Icons.announcement),
                Text("Avisos"),
              ],),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Avisos()));
              },
          ),
          ListTile(
              title: Row(children: [
                Icon(Icons.assignment),
                Text("Relatórios"),
              ],),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Relatorios()));
              },
          ),
          ListTile(
              title: Row(children: [
                Icon(Icons.search),
                Text("Vistorias"),
              ],),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vistorias()));
              },
          ),
          ListTile(
              title: Row(children: [
                Icon(Icons.location_on),
                Text("Locais"),
              ],),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Locations()));
              },
          ),
          ListTile(
              title: Row(children: [
                Icon(Icons.exit_to_app),
                Text("Sair"),
              ],),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginState()));
              }
          ),
        ],
      ),
    );
  }
}