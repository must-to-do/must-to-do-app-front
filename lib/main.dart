import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test MenuButton'),),
        body: Container(
          margin: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: 250.0,
            width: 250.0,
            color: Colors.white,
            child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: toggle?Colors.yellow[600]:Colors.yellow[200],
                    borderRadius: BorderRadius.circular(60.0),
                  ),

                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: (){
                        toggle? setState((){toggle=false;}) : setState((){toggle=true;});
                      },
                      icon: Icon(Icons.menu),
                    ),
                  ),
                ),
              ),

              Align(
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: toggle?Colors.yellow[600]:Colors.yellow[200],
                    borderRadius: BorderRadius.circular(60.0),
                  ),

                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: (){
                        toggle? setState((){toggle=false;}) : setState((){toggle=true;});
                      },
                      icon: Icon(Icons.favorite),
                    ),
                  ),
                ),
                alignment: Alignment(1.0,0.75),
              ),

            ],),
          ),
          )
      )

      );
  }
}

