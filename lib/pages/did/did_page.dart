import 'package:flutter/material.dart';
import 'package:mustodo/provider/page_notifier.dart';
import 'package:provider/provider.dart';


class Didpage extends Page{

  static final String pageName = 'DidPage';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings:this, builder: (context)=>const DidWidget());
  }

}

class DidWidget extends StatefulWidget {
  const DidWidget({super.key});


  @override
  State<DidWidget> createState() => _DidWidgetState();
}

class _DidWidgetState extends State<DidWidget> {
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
                Text('Did'),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.yellow,
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