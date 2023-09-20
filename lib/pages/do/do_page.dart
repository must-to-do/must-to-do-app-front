import 'package:flutter/material.dart';
import 'package:mustodo/provider/page_notifier.dart';
import 'package:provider/provider.dart';
import 'package:mustodo/ sidebar/menubutton.dart';



class Dopage extends Page{

  static final String pageName = 'DoPage';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings:this, builder: (context)=>const DoWidget());
  }

}

class DoWidget extends StatefulWidget {
  const DoWidget({super.key});


  @override
  State<DoWidget> createState() => _DoWidgetState();
}

class _DoWidgetState extends State<DoWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do'),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: IconButton(icon: Icon(Icons.logout), onPressed: (){
                    Provider.of<PageNotifier>(context, listen: false).goToMain();
                  }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}