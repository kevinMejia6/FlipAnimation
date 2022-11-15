import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Colores.dart';

void main() {
  runApp(flipanimation());
}

class flipanimation extends StatelessWidget {
  const flipanimation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: First(),
    );
  }
}

class First extends StatelessWidget {
  const First({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color5,
        centerTitle: true,
        title: const Text('Eduardo Mejia Kevin Leonel, Alfonzo Zepeda Gerardo Ernesto'),
        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
            children: [
              Text(
                'Bienvenidos!',
                style: GoogleFonts.fjallaOne(fontSize: 30),
              ),
              Text('Conozcamos la animacion Flip',
                  style: GoogleFonts.lobster(fontSize: 30)),
              SizedBox(height: 80),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Comida()));
                          }),
                          child:
                              Text('Comida', style: TextStyle(fontSize: 20))),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          
                          onPressed: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Pais()));
                          }),
                          child: Text('Pais', style: TextStyle(fontSize: 20))),
                    ),
                    Container(
                        width: 120,
                        height: 100,
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                           
                            onPressed: (() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Animales()));
                            }),
                            child: Text(
                              'Animales',
                              style: TextStyle(fontSize: 20),
                            ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Comida extends StatelessWidget {
  const Comida({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color5,
        centerTitle: true,
        title: const Text('Eduardo Mejia Kevin Leonel, Alfonzo Zepeda Gerardo Ernesto'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 40),
        child: Row(
          children: [
            Cards(),
            SizedBox(height: 80, width: 25,),
            Cards2(),
          ],
        ),
      )
    );
  }
}

class Pais extends StatelessWidget {
  const Pais({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color5,
        centerTitle: true,
        title: const Text('Eduardo Mejia Kevin Leonel, Alfonzo Zepeda Gerardo Ernesto'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 40),
        child: Row(
          children: [
            Cards3(),
            SizedBox(height: 80, width: 25,),
            Cards4(),
          ],
        ),
      )
    );
  }
}

class Animales extends StatelessWidget {
  const Animales({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color5,
        centerTitle: true,
        title: const Text('Eduardo Mejia Kevin Leonel, Alfonzo Zepeda Gerardo Ernesto'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 40),
        child: Row(
          children: [
            Cards5(),
            SizedBox(height: 80, width: 25,),
            Cards6(),
          ],
        ),
      )
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front:
               Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color3,
                  child: Center(child: Text('Comida Mexicana', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                  
                ),
              ),
              back: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2022/05/comida-mexicana-que-no-es-mexicana-portada.jpg'),
                ),
              )),
              
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(

                width: 200,
                height: 200,
                child: Card(
                  color: color4,
                  child: Center(child: Text('Comida Salvadoreña', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/e/eb/Gastronomia_salvadore%C3%B1a.png')
                ),
              )),
               
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color5,
                 child: Center(child: Text('Comida Italiana', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://www.eluniversal.com.mx/sites/default/files/2019/09/18/comida_italiana.jpg')
                ),
              )),
        ],
    );
  }
}

class Cards2 extends StatelessWidget {
  const Cards2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front:
               Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color4,
                  child: Center(child: Text('Comida Peruana', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                  
                ),
              ),
              back: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://miro.medium.com/max/1400/0*gwq2Ns2Ij_1kwd7J.jpg'),
                ),
              )),
              
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(

                width: 200,
                height: 200,
                child: Card(
                  color: color3,
                  child: Center(child: Text('Comida Colombiana', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://www.exactchange.es/uploads/images/2022/06/arepas-cual-es-comida-tipica-croacia-mejores-platos.png')
                ),
              )),
               
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color4,
                 child: Center(child: Text('Comida Chilena', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://static.emol.cl/emol50/Fotos/2015/04/15/file_20150415095014.jpg')
                ),
              )),
        ],
    );
  }
}

class Cards3 extends StatelessWidget {
  const Cards3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front:
               Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color3,
                  child: Center(child: Text('Mexico', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                  
                ),
              ),
              back: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/1200px-Flag_of_Mexico.svg.png'),
                ),
              )),
              
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(

                width: 200,
                height: 200,
                child: Card(
                  color: color4,
                  child: Center(child: Text('El Salvador', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Flag_of_El_Salvador.svg/1200px-Flag_of_El_Salvador.svg.png')
                ),
              )),
               
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color5,
                 child: Center(child: Text('Italia', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/1200px-Flag_of_Italy.svg.png')
                ),
              )),
        ],
    );
  }
}

class Cards4 extends StatelessWidget {
  const Cards4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front:
               Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color3,
                  child: Center(child: Text('Peru', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                  
                ),
              ),
              back: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Flag_of_Peru_%28state%29.svg/800px-Flag_of_Peru_%28state%29.svg.png'),
                ),
              )),
              
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(

                width: 200,
                height: 200,
                child: Card(
                  color: color4,
                  child: Center(child: Text('Colombia', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Flag_of_the_Gran_Colombia.svg/1200px-Flag_of_the_Gran_Colombia.svg.png')
                ),
              )),
               
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color5,
                 child: Center(child: Text('Chile', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Flag_of_Chile.svg/1200px-Flag_of_Chile.svg.png')
                ),
              )),
        ],
    );
  }
}

class Cards5 extends StatelessWidget {
  const Cards5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front:
               Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color3,
                  child: Center(child: Text('Perro', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                  
                ),
              ),
              back: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('http://c.files.bbci.co.uk/48DD/production/_107435681_perro1.jpg'),
                ),
              )),
              
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(

                width: 200,
                height: 200,
                child: Card(
                  color: color4,
                  child: Center(child: Text('Gato', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://static.dw.com/image/62211459_303.jpg')
                ),
              )),
               
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color5,
                 child: Center(child: Text('Pez', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://images.hola.com/imagenes/estar-bien/20201021177701/pez-betta-caracteristicas-cuidados/0-880-714/pez-betta-t.jpg')
                ),
              )),
        ],
    );
  }
}

class Cards6 extends StatelessWidget {
  const Cards6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front:
               Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color3,
                  child: Center(child: Text('Tortuga', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                  
                ),
              ),
              back: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjkvhwwEECtKzc0TtkAmnIoxqwNBpsQnHXAA&usqp=CAU'),
                ),
              )),
              
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(

                width: 200,
                height: 200,
                child: Card(
                  color: color4,
                  child: Center(child: Text('Conejo', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Oryctolagus_cuniculus_Tasmania_2.jpg/1200px-Oryctolagus_cuniculus_Tasmania_2.jpg')
                ),
              )),
               
          FlipCard(
              direction: FlipDirection.VERTICAL,
              front: Container(
                
                width: 200,
                height: 200,
                child: Card(
                  color: color5,
                 child: Center(child: Text('Vaca', style:GoogleFonts.lobster(fontSize: 20, color: Colors.white))),
                ),
              ),
              back: Container(
                width: 200,
                height: 200,
                child: Card(
                  child: Image.network('https://ruminants.ceva.pro/hubfs/razas%20de%20vaca.jpg')
                ),
              )),
        ],
    );
  }
}



