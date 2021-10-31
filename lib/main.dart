import 'package:all_sensors/all_sensors.dart';
import 'package:flutter/material.dart';

void main() => runApp(TEP());

class TEP extends StatefulWidget {
  @override
  createState() => Estado();
}

class Estado extends State<TEP> {
  //late List<double> giroscopio;
  late double _x;
  late double _y;

  @override
  void initState() {
    super.initState();
    gyroscopeEvents.listen((event) {
      setState(() {
        //giroscopio = [event.x, event.y, event.z];
        _x = event.y;
        _y = event.x;
      });
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Toma Chango Tu Banana")),
          body: Stack(alignment: AlignmentDirectional.topCenter, children: [
            Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/jungla.jpg"),
                fit: BoxFit.cover,
              ),
            )),
            AnimatedContainer(
              alignment: Alignment(_x, _y),
              duration: const Duration(seconds: 1),
              child: Image(
                image: AssetImage('assets/jorgesf.png'),
                height: 250,
              ),
            ),
          ])));
}
