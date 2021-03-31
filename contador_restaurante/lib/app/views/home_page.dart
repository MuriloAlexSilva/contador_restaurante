import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;
  String text = 'Pode entrar';
  changeContador(int valor) {
    setState(() {
      contador += valor;

      if (contador > 10) {
        text = 'Lotado';
      } else if (contador < 0) {
        text = 'Sem chance, estar negativo';
      } else {
        text = 'Pode entrar';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Opacity(
              opacity: 0.7,
              child: Image.asset(
                'images/restaurant.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pessoas: $contador',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          changeContador(1);
                        },
                        child: Text('+1',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    SizedBox(
                      width: 20,
                    ),
                    TextButton(
                        onPressed: () {
                          changeContador(-1);
                        },
                        child: Text('-1',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                  ],
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
