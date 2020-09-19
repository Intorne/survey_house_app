import 'package:flutter/material.dart';
import 'package:survey_house_app/files/menu_appbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: SurveyAppBar(),
      drawer: DrawerNavegacao(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: CustomScrollView(
            slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  "Visitas de hoje",
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
                                  //width: c_width,
                                  child: Text("Jardim Flórida"),
                                ),
                                IconButton(
                                  icon: Icon(Icons.assignment),
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
                                    "Horário: 8:00",
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
                                  //width: c_width,
                                  child: Text("Centro"),
                                ),
                                IconButton(
                                  icon: Icon(Icons.assignment),
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
                                    "Horário: 10:00",
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ])),
          SliverList(
            delegate: SliverChildListDelegate([
              Text(
                "Vistorias de hoje",
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
                                //width: c_width,
                                child: Text("Jardim Flórida"),
                              ),
                              IconButton(
                                icon: Icon(Icons.assignment),
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
                                  "Horário: 13:00",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
                                //width: c_width,
                                child: Text("Centro"),
                              ),
                              IconButton(
                                icon: Icon(Icons.assignment),
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
                                  "Horário: 16:00",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]))
        ]),
      )
    );
  }
}
