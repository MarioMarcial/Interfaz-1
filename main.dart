import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatelessWidget {
  final _foto1 =
      'https://images.unsplash.com/photo-1504898770365-14faca6a7320?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2004&q=80';
  final _foto2 =
      'https://images.unsplash.com/photo-1601662528567-526cd06f6582?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2158&q=80';
  final _foto3 =
      'https://images.unsplash.com/photo-1502219684198-fa9b5164d9d7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80';
  final _foto4 =
      'https://images.unsplash.com/photo-1549068106-b024baf5062d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80';
  final _foto5 =
      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80';
  final _foto6 =
      'https://images.unsplash.com/photo-1511641125570-375e725b1e4e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=701&q=80';
  final txtStyle1 = TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3
        ..color = Colors.pink[200]);
  final txtStyle2 = TextStyle(
      color: Colors.blueGrey[50], fontWeight: FontWeight.bold, fontSize: 30.0);
  final txtStyle3 = TextStyle(
      color: Colors.white, fontSize: 60.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(scrollDirection: Axis.vertical, children: <Widget>[
      _pagina(
          url: _foto1,
          t1: '¡Haz Swipe up!',
          t2: 'Revisa la sesión',
          icon: Icons.arrow_drop_up_sharp),
      _pagina2(url: _foto2, t3: 'Ingresar')
    ]));
  }

  Widget _pagina({String url, String t1, String t2, IconData icon}) {
    return Stack(children: <Widget>[
      _fondo(imagen: url),
      _contenido(t1: t1, t2: t2, icon: icon)
    ]);
  }

  Widget _pagina2({String url, String t3, IconData icon}) {
    return Stack(children: <Widget>[_fondo(imagen: url), _contenido2(t3: t3)]);
  }

  Widget _fondo({String imagen}) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: NetworkImage(imagen), fit: BoxFit.cover),
    );
  }

  Widget _contenido({String t1, String t2, IconData icon}) {
    return SafeArea(
        child: Column(children: <Widget>[
      SizedBox(height: 120.0),
      Text(t1, style: txtStyle1),
      Text(t2, style: txtStyle2),
      Expanded(child: Container()),
      Icon(icon, size: 200.0, color: Colors.pink),
    ]));
  }

  Widget _contenido2({String t3}) {
    return SafeArea(
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
      Container(
          width: 580,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(_foto5),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.rectangle,
          ),
          child: Align(
            alignment: FractionalOffset(1, 0.5),
            child: Icon(Icons.arrow_right_sharp,
                size: 200.0, color: Colors.teal[200]),
          )),
      Container(
        width: 480,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(_foto4),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      Container(
        width: 600,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(_foto3),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      Container(
        width: 550,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(_foto6),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
    ]));
  }
}
