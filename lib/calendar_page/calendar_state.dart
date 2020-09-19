import 'package:flutter/material.dart';
import 'package:survey_house_app/files/menu_appbar.dart';
import 'add_visit.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => new _CalendarState();
}

List<DateTime> dataLivre = [
  DateTime(2020, 9, 9),
  DateTime(2020, 10, 10),

];
List<DateTime> dataOcupada = [
  DateTime(2020, 9, 8),
  DateTime(2020, 10, 9),

];

class _CalendarState extends State<Calendar> {
  DateTime _currentDate = DateTime.now();
  static Widget _presentIcon(String day) => Container(
    decoration: BoxDecoration(
      color: Color.fromRGBO(153, 204, 153, 10),
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
      color: Color.fromRGBO(250, 80, 80, 10),
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

  var len = 2;
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
      headerTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      height: cHeight * 0.54,
      weekFormat: false,
      showOnlyCurrentMonthDate: true,
      weekdayTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      weekendTextStyle: TextStyle(
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
      ),
      todayButtonColor: Colors.deepOrange[500],
      markedDatesMap: _markedDateMap,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 1,
      markedDateMoreShowTotal: null, // null for not showing hidden events indicator
      markedDateIconBuilder: (event) {
        return event.icon;
      },
  );

    return new Scaffold(
      appBar: SurveyAppBar(),
      drawer: DrawerNavegacao(),
      floatingActionButton: new FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.deepOrange,
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => NovaVisita()));
          },
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _calendarCarouselNoHeader,
            markerRepresent(Color.fromRGBO(250, 80, 80, 10), "Visita Marcada"),
            markerRepresent(Color.fromRGBO(153, 204, 153, 10), "Vistoria Marcada"),
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
