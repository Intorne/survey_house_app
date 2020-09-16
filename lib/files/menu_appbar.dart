import 'package:flutter/material.dart';
import 'package:survey_house_app/locations_page/location_state.dart';

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
                color: Colors.orange
            ),
          ),
          ListTile(
            title: Row(children: [
              Icon(Icons.calendar_today),
              Text("Calendário"),
            ],),
            onTap: () {},
          ),
          ListTile(
              title: Row(children: [
                Icon(Icons.announcement),
                Text("Avisos"),
              ],),
              onTap: () {}
          ),
          ListTile(
              title: Row(children: [
                Icon(Icons.assignment),
                Text("Relatórios"),
              ],),
              onTap: () {}
          ),
          ListTile(
              title: Row(children: [
                Icon(Icons.search),
                Text("Vistorias"),
              ],),
              onTap: () {}
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
              onTap: () {}
          ),
        ],
      ),
    );
  }
}