import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Alertas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: RaisedButton(
              child: Text('Basic Alert'),
              onPressed: () => _onBasicAlertPressed(context),
            )
        )
    );
  }
}

_onBasicAlertPressed(context) {
  Alert(
    context: context,
    title: "Aviso",
    desc: "Alerta Padrão",
  ).show();
}