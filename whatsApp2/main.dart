import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

void main() => runApp(TEP());

class TEP extends StatefulWidget {
  @override
  createState() => Estado();
}

class Estado extends State<TEP> {
  String mensaje = "";
  TextEditingController mensajeControlador = TextEditingController();
  List<Widget> Items=[
  new Center(
    child: DateChip(
      date: new DateTime(2021, 10, 22),
      color: Colors.lightBlue,
     ),
  )
  ];
  @override
  Widget build(BuildContext context) => MaterialApp(
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
                    child:
                    ListView.builder(key: Key("ListView"),//[
                        itemCount: Items.length, // number of items in your list

                        //here the implementation of itemBuilder. take a look at flutter docs to see details
                        itemBuilder: (BuildContext context, int Itemindex){
                          return Items[Itemindex]; // return your widget
                        }


                    )
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
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: mensajeControlador,
                                  decoration: InputDecoration(
                                      hintText: "   Mensaje",
                                      hintStyle: TextStyle(color: Colors.black54),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //mensaje = mensajeControlador.text;
                        IconButton(icon: Icon(Icons.send, color: Colors.white), onPressed: () {  setState(() {
                          mensaje = mensajeControlador.text;
                          Items.add( new BubbleSpecialOne(
                            text: "$mensaje",
                            color: Colors.teal,
                            sent: true,
                            seen: false,
                            delivered: true,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                          );

                        });}),
                        IconButton(icon: Icon(Icons.settings_voice_rounded, color: Colors.white), onPressed: () {}),
                      ],
                    )
                )

              ]))
      ));
}
