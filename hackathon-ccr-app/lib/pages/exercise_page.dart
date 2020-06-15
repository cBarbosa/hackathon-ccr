import 'package:flutter/material.dart';

class ExercisePage extends StatefulWidget {
  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Caminhada"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 35, 140, 165),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/images/homemMenuInferior.svg"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    "Quer trocar o exercício?",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    print("Trocar exercicio");
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.lightBlue, spreadRadius: 3),
                  ],
                ),
                height: 100,
                width: 100,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 25,
                      child: Text(
                        "Distância\nPercorrida",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 40,
                      child: Text(
                        "0m",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.blueGrey, spreadRadius: 3),
                  ],
                ),
                height: 100,
                width: 100,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      right: 35,
                      child: Text(
                        "Tempo",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 30,
                      child: Text(
                        "00:00",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.greenAccent, spreadRadius: 3),
                  ],
                ),
                height: 100,
                width: 100,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      right: 30,
                      child: Text(
                        "Calorias",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 45,
                      child: Text(
                        "0",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          RaisedButton(child: Text("Iniciar"), onPressed: () {}),
        ],
      ),
    );
  }
}
