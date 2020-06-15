import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

var controllerNome = new TextEditingController();
var controllerIdade = new MaskedTextController(mask: '00');
var controllerSangue = new MaskedTextController(mask: 'A@');
var controllerAlergia = new TextEditingController();
var controllerEmergencia = new MaskedTextController(mask: '(00) 00000-0000');

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RodaBem"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueGrey,
                  boxShadow: [
                    BoxShadow(color: Colors.greenAccent, spreadRadius: 0),
                  ],
                ),
                height: 100,
                child: Icon(
                  Icons.person_outline,
                  size: 100,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: controllerNome,
                decoration: InputDecoration(
                    labelText: "Nome", hintText: "Ex: Severino da Silva"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 35,
                    child: TextField(
                      controller: controllerIdade,
                      decoration: InputDecoration(
                          labelText: "Idade", hintText: "Ex: 51"),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                      controller: controllerSangue,
                      decoration: InputDecoration(
                          labelText: "Tipo Sanguíneo", hintText: "Ex: A+"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: controllerAlergia,
                decoration: InputDecoration(
                    labelText: "Tem Alergia a medicamentos? Quais?",
                    hintText: "Ex: Sim, Benzetacil!"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: controllerEmergencia,
                decoration: InputDecoration(
                    labelText: "Tel. Emergência",
                    hintText: "Ex: 61 98888-8888"),
              ),
            ),
            SizedBox(height: 100),
            Container(
              width: 160,
              child: RaisedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Histórico de Saúde"),
                      Icon(Icons.remove_red_eye)
                    ],
                  ),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
