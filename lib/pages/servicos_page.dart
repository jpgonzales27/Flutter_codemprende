import 'package:flutter/material.dart';

class ServiciosPage extends StatelessWidget {
  List<String> listaOpciones = ['Opcion1', 'Opcion2', 'Opcion3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff67abc8),
        title: Text('Nuestros Servicios'),
        actions: [
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          //IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
          PopupMenuButton(itemBuilder: (context) {
            return listaOpciones.map((opt) {
              return PopupMenuItem(child: Text(opt));
            }).toList();
          })
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  _tarjetaPersonalizada(
                      'Medicamentos', 'assets/imagenes/medicamentos.jpeg'),
                  _tarjetaPersonalizada('Libros', 'assets/imagenes/libro.jpeg'),
                ],
              ),
              Row(
                children: [
                  _tarjetaPersonalizada(
                      'Alimentos', 'assets/imagenes/alimentos.jpeg'),
                  _tarjetaPersonalizada(
                      'Periodicos', 'assets/imagenes/periodicos.jpeg'),
                ],
              ),
              Row(
                children: [
                  _tarjetaPersonalizada(
                      'Medicamentos', 'assets/imagenes/medicamentos.jpeg'),
                  _tarjetaPersonalizada('Libros', 'assets/imagenes/libro.jpeg'),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        backgroundColor: Color(0xff67abc8),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tarjetaPersonalizada(String nombre, String rutaImagen) {
    return Expanded(
      child: Card(
        child: Container(
          height: 250,
          // color:Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  image: AssetImage(rutaImagen),
                  height: 200,
                  fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  nombre,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
