import 'package:flutter/material.dart';


class Tela1 extends StatelessWidget {


 static const TextStyle _styleOption =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

   @override
  Widget build(BuildContext context) {
    return Scaffold (
     body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.fromLTRB(0, 250.0, 0, 0),
              child: Image.asset('assets/imgs/img1.png'),
            ),
            Text('Indice 0: Imagem 1',style: _styleOption)
          ],
        ),
      ),
    );
  }
}