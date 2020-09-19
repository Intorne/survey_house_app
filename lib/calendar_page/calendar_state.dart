import 'package:flutter/material.dart';
import 'package:survey_house_app/files/menu_appbar.dart';
import 'package:flutter_calendar_week/calendar_week.dart';
import 'add_visit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => new _CalendarState();
}

List<DateTime> dataLivre = [
  DateTime(2019, 2, 1),
  DateTime(2019, 2, 3),
  DateTime(2019, 2, 4),
  DateTime(2019, 2, 5),
  DateTime(2019, 2, 6),
  DateTime(2019, 2, 9),
  DateTime(2019, 2, 10),
  DateTime(2019, 2, 11),
  DateTime(2019, 2, 15),
  DateTime(2019, 2, 11),
  DateTime(2019, 2, 15),
];
List<DateTime> dataOcupada = [
  DateTime(2019, 2, 2),
  DateTime(2019, 2, 7),
  DateTime(2019, 2, 8),
  DateTime(2019, 2, 12),
  DateTime(2019, 2, 13),
  DateTime(2019, 2, 14),
  DateTime(2019, 2, 16),
  DateTime(2019, 2, 17),
  DateTime(2019, 2, 18),
  DateTime(2019, 2, 17),
  DateTime(2019, 2, 18),
];

class _CalendarState extends State<Calendar> {
  DateTime _currentDate2 = DateTime.now();
  static Widget _presentIcon(String day) => Container(
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.all(
        Radius.circular(1000),
      ),
    ),
    child: Center(
      child: Text(
        day,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );
  static Widget _absentIcon(String day) => Container(
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(
        Radius.circular(1000),
      ),
    ),
    child: Center(
      child: Text(
        day,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
  );

  CalendarCarousel _calendarCarouselNoHeader;

  var len = 9;
  double cHeight;

  @override
  Widget build(BuildContext context) {
    cHeight = MediaQuery.of(context).size.height;
    for (int i = 0; i < len; i++) {
      _markedDateMap.add(
        dataLivre[i],
        new Event(
          date: dataLivre[i],
          title: 'Event 5',
          icon: _presentIcon(
            dataLivre[i].day.toString(),
          ),
        ),
      );}

    for (int i = 0; i < len; i++) {
      _markedDateMap.add(
        dataOcupada[i],
        new Event(
          date: dataOcupada[i],
          title: 'Event 5',
          icon: _absentIcon(
            dataOcupada[i].day.toString(),
          ),
        ),
      );
    }


    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      height: cHeight * 0.54,
      weekendTextStyle: TextStyle(
        color: Colors.deepOrange,
      ),
      todayButtonColor: Colors.deepOrange[500],
      markedDatesMap: _markedDateMap,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 1,
      markedDateMoreShowTotal:
      null, // null for not showing hidden events indicator
      markedDateIconBuilder: (event) {
        return event.icon;
      },
    );

    return new Scaffold(
      appBar: SurveyAppBar(),
      drawer: DrawerNavegacao(),
      floatingActionButton: new FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.orange
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _calendarCarouselNoHeader,
            markerRepresent(Colors.red, "Visita Marcada"),
            markerRepresent(Colors.green, "Livre"),
          ],
        ),
      ),
    );
  }

  Widget markerRepresent(Color color, String data) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: color,
        radius: cHeight * 0.022,
      ),
      title: new Text(
        data,
      ),
    );
  }
}
