import 'package:flutter/material.dart';
import 'package:rodabem_app/pages/nav_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RodaBem"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      drawer: NavDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(color: Colors.greenAccent, spreadRadius: 0),
              ],
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                Text(
                  "Diga \"Oi Rosa\" para ativar\ne depois diga o que você\n deseja fazer",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blueGrey,
                      boxShadow: [
                        BoxShadow(color: Colors.greenAccent, spreadRadius: 3),
                      ],
                    ),
                    height: 100,
                    child: Icon(
                      Icons.mic,
                      size: 100,
                      color: Colors.greenAccent,
                    ),
                  ),
                  onTap: () {
                    print("Clicou no Microfone");
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ex: Rosa, alterar meu nome",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
