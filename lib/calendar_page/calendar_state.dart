import 'package:flutter/material.dart';
import 'package:survey_house_app/files/menu_appbar.dart';
import 'package:flutter_calendar_week/calendar_week.dart';
import 'add_visit.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.64;
    return new Scaffold(
        appBar: SurveyAppBar(),
        drawer: DrawerNavegacao(),
        floatingActionButton: new FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.orange,
          onPressed: () => NovaVisita(),
        ),
    body: Calendar(),
    );
  }
}
