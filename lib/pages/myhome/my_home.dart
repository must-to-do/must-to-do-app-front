import 'package:flutter/material.dart';
import 'package:mustodo/pages/auth/auth_page.dart';
import 'package:mustodo/pages/do/do_page.dart';
import 'package:mustodo/pages/did/did_page.dart';
import 'package:mustodo/pages/destination/destination_page.dart';
import 'package:mustodo/provider/page_notifier.dart';
import 'package:provider/provider.dart';
import 'package:mustodo/skeleton/skeleton_container.dart';

class MyHomePage extends StatefulWidget {

  static final String pageName = 'MyHomePage';

  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.logout), onPressed: (){
            Provider.of<PageNotifier>(context, listen: false).goToOtherPage(Authpage.pageName);
          })
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              TextButton(onPressed: (){
                Provider.of<PageNotifier>(context, listen: false).goToOtherPage(Dopage.pageName);
              },
                  child: Text("Do")
              ),
              TextButton(onPressed: (){
                Provider.of<PageNotifier>(context, listen: false).goToOtherPage(Didpage.pageName);
              },
                  child: Text("Did")
              ),
              TextButton(onPressed: (){
                Provider.of<PageNotifier>(context, listen: false).goToOtherPage(Destinationpage.pageName);
              },
                  child: Text("Destination")
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SkeletonContainer(width: 200, height: 50),
                  SizedBox(height: 20),
                  SkeletonContainer(width: 300, height: 30),
                  SizedBox(height: 20),
                  SkeletonContainer(width: 150, height: 70),
                ],
              ),
            ],
          ),
        ),
      ),


    );
  }
}
