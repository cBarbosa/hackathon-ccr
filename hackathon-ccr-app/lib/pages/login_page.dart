import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:rodabem_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

var controllerDDD = new MaskedTextController(mask: '00');
var controllerPhone = new MaskedTextController(mask: '00000-0000');
var controllerCode = new MaskedTextController(mask: '000');

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 35, 140, 165),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Antes de começar, informe seu número.\nAssim saberemos quem é você",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 30,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),
                        controller: controllerDDD,
                        decoration: InputDecoration(
                          labelText: "DDD",
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 70,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                          fontSize: 12),
                        controller: controllerPhone,
                        decoration: InputDecoration(
                          labelText: "Telefone",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "Insira o código de segurança\nenviado para você",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Container(
                  width: 45,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12),
                    controller: controllerCode,
                    decoration: InputDecoration(labelText: "Código"),
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text("INICIAR"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
