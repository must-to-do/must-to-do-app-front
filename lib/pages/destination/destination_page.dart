import 'package:flutter/material.dart';
import 'package:mustodo/provider/page_notifier.dart';
import 'package:provider/provider.dart';


class Destinationpage extends Page{

  static final String pageName = 'DestinationPage';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings:this, builder: (context)=>const DestinationWidget());
  }

}

class DestinationWidget extends StatefulWidget {
  const DestinationWidget({super.key});


  @override
  State<DestinationWidget> createState() => _DestinationWidgetState();
}

class _DestinationWidgetState extends State<DestinationWidget> {

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
                Text('Destination'),
                Container(
                 width: 200,
                 height: 200,
                    color: Colors.blue,
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
