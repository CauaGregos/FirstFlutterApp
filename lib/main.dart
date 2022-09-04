import 'package:flutter/material.dart';
import 'lista.dart';
import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const TextStyle _styleOption =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _wgOptions = <Widget>[// lista para traalhar em conjunto com o indexador 
    Tela1(),Tela2(),Tela3()
  ];



  void _onItemTapped(int index) {
    setState(() {
      //seta meu novo estado para o contexto atual
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DS 403")),
      body: Center(
        child: _wgOptions.elementAt(_selectedIndex),
      ),
      
      bottomNavigationBar: BottomNavigationBar(// meu TabNav que indica para qual contexto vamos
        items: [
          Listas.items.elementAt(0),
          Listas.items.elementAt(1),
          Listas.items.elementAt(2),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[900],
        onTap: _onItemTapped,// função ao clicar nos botões do TabNav
      ),
    );
  }
}
