import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio Facebook',
      theme: ThemeData(
      ),
      home: const PageLoginFacebookState()
    );
  }
}

class PageLoginFacebookState extends StatefulWidget {
  const PageLoginFacebookState({Key? key}) : super(key: key);

  @override
  State<PageLoginFacebookState> createState() => _PageLoginFacebookStateState();
}

class _PageLoginFacebookStateState extends State<PageLoginFacebookState> {
  //var
  var colorFondoStado = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Container(
          //la clase BoxDecoration: proporciona una variedad de formas de dibujar en un cuadro
          decoration: Theme
              .of(context)
              .brightness == Brightness.dark ? null : const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(59, 89, 152, 1.0),
                    Color.fromRGBO(59, 89, 152, 1.0)
                  ])),
          //SafeArea: Un Widget que inserta a su hijo con suficiente relleno para evitar instruciones por parte del sistema operativo*/
          child: SafeArea(child: loginFacebook(context),
          ),
        ),
      ),
    );
  }

  Widget loginFacebook(BuildContext context) {
    //Stack: Esta clase es útil si deseas superponer a varios niños de una manera simple
    return Stack(
      children: <Widget>[
        //Agregamos los Widgets de la vista
        Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Container()),
              const FaIcon(FontAwesomeIcons.facebook, size: 50.0,),
              const SizedBox(height: 30.0),
              const TextField(decoration: InputDecoration(
                  labelText: 'Correo Electrónico o teléfono')),
              const SizedBox(height: 20.0),
              const TextField(decoration: InputDecoration(labelText: 'Contraseña')),
              const SizedBox(height: 20.0),
              InkWell(child: Container(padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    "Iniciar Sesion", style: TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.center,),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.black12)), onTap: () {},),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SizedBox(width: 12.0),
                  Text("Se te olvidó tu contraseña?",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
        //Agregar dos botones
      ],
    );
  }
}






