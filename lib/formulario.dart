import 'package:flutter/material.dart';

/*
class Formulario extends StatefulWidget{
  @override
  FormularioState createState() {
    print(" Create de Formulario");
    return new FormularioState();
  }
}

class FormularioState extends State<Formulario>  {

  @override
  Widget build(BuildContext context) {
    return Text(" Hola");
  }
}
*/

class Formulario extends StatefulWidget{
  @override
  PasswordState createState() {
    print(" Create de Formulario");
    return new PasswordState();
  }
}

class PasswordState extends State<Formulario>  {

  bool _mostrar=false;
  doclick(){
    print("click");
    setState(() {
      _mostrar = !_mostrar;
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Expanded(child:

          TextField(
            obscureText: !_mostrar,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          )
          ),
          //--------------------------
          if(_mostrar)
            IconButton(
                icon: Icon(Icons.visibility),
                onPressed: (){
                  doclick();
                })
          else
            IconButton(
                icon: Icon(Icons.visibility_off),
                onPressed: (){
                  doclick();
                })
        ],
      )
        ;
  }
}