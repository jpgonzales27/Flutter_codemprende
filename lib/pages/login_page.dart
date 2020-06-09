
import 'package:appcodeemprende/pages/servicos_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              _crearfondo(),
              Container(
                height: 680,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _crearLogo(),
                    _crearNombre(),
                    _crearPassword(),
                    _crearBoton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearfondo() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Image(
          image: AssetImage('assets/imagenes/cuidado.png'), fit: BoxFit.fill),
    );
  }

  Widget _crearLogo() {
    return CircleAvatar(
      backgroundColor: Color(0xff99ddfb),
      radius: 100,
      child: Container(
          margin: EdgeInsets.only(top: 20),
          height: 900,
          child: Image(
            image: AssetImage('assets/imagenes/logo.png'),
            fit: BoxFit.cover,
          )),
    );
  }

  Widget _crearNombre() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: 'Nombre',
        ),
      ),
    );
  }

  Widget _crearPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: 'Contraseña',
        ),
      ),
    );
  }

  Widget _crearBoton() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: StadiumBorder(),
        child: Text(
          'ENVIAR',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Color(0xff99ddfb),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ServiciosPage()));
        },
      ),
    );
  }
}
