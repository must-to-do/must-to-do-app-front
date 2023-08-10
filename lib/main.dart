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
                color:Colors.white,
                child: Stack(
                  children: [
                    Align( //우산아이콘
                      child: AnimatedAlign(
                        alignment: toggle?Alignment(1.0,1.0):Alignment(1.0,0.25),
                        duration: Duration(milliseconds: 150),
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color:Colors.yellow[600],
                            borderRadius: BorderRadius.circular(60.0),
                          ),

                          child: Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: (){

                              },
                              icon: Icon(Icons.beach_access),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Align( //음악아이콘
                      child: AnimatedAlign(
                        alignment: toggle?Alignment(1.0,1.0):Alignment(1.0,0.5),
                        duration: Duration(milliseconds: 125),
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color:Colors.yellow[600],
                            borderRadius: BorderRadius.circular(60.0),
                          ),

                          child: Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: (){

                              },
                              icon: Icon(Icons.audiotrack),
                            ),
                          ),
                        ),
                      ),
                    ),


                    Align( //하트아이콘
                      child: AnimatedAlign(
                        alignment: toggle?Alignment(1.0,1.0):Alignment(1.0,0.75),
                        duration: Duration(milliseconds: 100),
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color:Colors.yellow[600],
                            borderRadius: BorderRadius.circular(60.0),
                          ),

                          child: Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: (){

                              },
                              icon: Icon(Icons.favorite),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Align(  //메뉴아이콘
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: toggle?Colors.yellow[600]:Colors.yellow[300],
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

                  ],),
              ),
            )
        )

    );
  }
}

