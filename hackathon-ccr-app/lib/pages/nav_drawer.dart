import 'package:flutter/material.dart';
import 'package:rodabem_app/pages/exercise_page.dart';
import 'package:rodabem_app/pages/profile.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'RodaBem',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('Editar Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Minha Avaliação'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text('Meus Pontos'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.directions_walk),
            title: Text('Exercício Físico'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExercisePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre Nós'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Privacidade'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Ajuda'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: 50,
          ),
          Center(child: Text("Versão 1.0"))
        ],
      ),
    );
  }
}
