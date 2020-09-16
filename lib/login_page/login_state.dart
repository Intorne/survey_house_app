import 'package:flutter/material.dart';
import 'package:survey_house_app/home_page/home_state.dart';

class LoginState extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginState> {

  TextStyle style = TextStyle( //style padrão
    fontFamily: 'Montserrat',
    fontSize: 20.0,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          labelText: "Usuário",
          labelStyle: TextStyle(
            color: Colors.black38, fontSize: 15
          ),
          contentPadding: EdgeInsets.all(15),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0))),
    );

    final passwordField = TextFormField(
        obscureText: true,
        style: style,
        decoration: InputDecoration(
            labelText: "Senha",
            labelStyle: TextStyle(
                color: Colors.black38, fontSize: 15
            ),
            contentPadding: EdgeInsets.all(15),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0))),
    );

    final buttonLogin = ButtonTheme(
        minWidth: MediaQuery //deixa o botão do tamanho da caixa de texto
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: RaisedButton(
            color: Colors.black,
            child: Text("Entrar", textAlign: TextAlign.center,
                style: style.copyWith(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                )),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute (
                  builder: (context) => HomeState()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            )
        )
    );

    final buttonText = Text(
      "Esqueci minha senha",
    );

    return Scaffold(body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.orange,
            padding: const EdgeInsets.fromLTRB(40, 160, 40, 200),
            child: Column( children: <Widget>[
              SizedBox(height: 150.0,
                child: Image.asset(
                    "imagens/logoPB.png", fit: BoxFit.contain),
              ),
              SizedBox(height: 40.0), emailField,
              SizedBox(height: 20.0), passwordField,
              SizedBox(height: 30.0), buttonLogin,
              SizedBox(height: 30.0), buttonText,
              ],
            )
          ),
        )
      )
    );
  }
}