import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

void main() => runApp(TEP());

class TEP extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
          home: Scaffold(
              appBar: AppBar(
                  backgroundColor: Color(0xFF128C7E),
                  title: Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i.pravatar.cc/150?u=a042581f4e29026704d",
                              scale: 1)),
                    ),
                    VerticalDivider(),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "America",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "En Linea",
                            style: TextStyle(fontSize: 15),
                          )),
                    )
                  ]),
                  leading: Wrap(children: [
                    IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.arrow_back_sharp),
                        onPressed: () {}),
                  ]),
                  actions: [
                    IconButton(icon: Icon(Icons.call), onPressed: () {}),
                    IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
                  ]),
              body: Container(
                  child: Stack(children: [
                    Image.network(
                      "http://www.solofondos.com/wp-content/uploads/2015/12/imagenes-para-whatsapp-en-hd-2.jpg",
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      child: Container(
                        height: 670,
                        child:                         ListView(children: [
                          Center(
                            child: DateChip(
                              date: new DateTime(2021, 10, 16),
                              color: Colors.lightBlue,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Hola",
                            color: Colors.teal,
                            sent: true,
                            seen: true,
                            delivered: true,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Hola :V",
                            isSender: false,
                            color: Colors.blueGrey,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Estoy haciendo una prueba de una app que estoy desarrollando, estoy simulando whatsapp",
                            color: Colors.teal,
                            sent: true,
                            seen: true,
                            delivered: true,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Es una app desarrollada en un framework llamado flutter, cuyo lenguaje de programación es dart",
                            color: Colors.teal,
                            sent: true,
                            seen: true,
                            delivered: true,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Al utilizar este framework como desarrollador se tienen muchas ventajas, es multiplataforma",
                            color: Colors.teal,
                            sent: true,
                            seen: true,
                            delivered: true,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Ademas de que con el mismo código puedes generar una app tanto para android como para ios",
                            color: Colors.teal,
                            sent: true,
                            seen: true,
                            delivered: true,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Suena muy interesante, el framework es muy poderoso por todo lo que te permite hacer",
                            isSender: false,
                            color: Colors.blueGrey,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Sigue asi, pronto podras desarrollar apps mas complejas",
                            isSender: false,
                            color: Colors.blueGrey,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Si, pretendo seguir con esto. Me agrada este lenguaje y mucho mas el framework",
                            color: Colors.teal,
                            sent: true,
                            seen: true,
                            delivered: true,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          BubbleSpecialOne(
                            text: "Bueno, te dejo. Seguire desarrollando",
                            color: Colors.teal,
                            sent: true,
                            seen: false,
                            delivered: true,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ])
                        ,
                      ),
                    ),
                    Align(alignment: Alignment.bottomLeft,
                        child:Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(decoration:BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "   Mensaje",
                                        hintStyle: TextStyle(color: Colors.black54),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(icon: Icon(Icons.add_a_photo, color: Colors.white), onPressed: () {}),
                            IconButton(icon: Icon(Icons.settings_voice_rounded, color: Colors.white), onPressed: () {}),
                          ],
                        )
                    )

                  ])),
          )
      );
}