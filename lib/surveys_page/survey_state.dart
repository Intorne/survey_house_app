import 'package:flutter/material.dart';
import 'package:survey_house_app/files/menu_appbar.dart';

class Vistorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.64;
    return new Scaffold(
        appBar: SurveyAppBar(),
        drawer: DrawerNavegacao(),
        floatingActionButton: new FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color.fromRGBO(31, 150, 159, 1),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: CustomScrollView(slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate([
                  Text(
                    "Vistorias Agendadas",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 15.0, bottom: 15.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Icon(
                                      Icons.home,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10.0),
                                    width: c_width,
                                    child: Text("Jardim Flórida"),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    color: Colors.orange,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.0),
                                    child: Text(
                                      "Dia 21/11 as 10:00",
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ]))
          ]),
        ));
  }
}
