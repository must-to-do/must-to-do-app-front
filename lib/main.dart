import 'package:flutter/material.dart';
import 'package:mustodo/pages/auth/auth_page.dart';
import 'package:mustodo/pages/do/do_page.dart';
import 'package:mustodo/pages/did/did_page.dart';
import 'package:mustodo/pages/destination/destination_page.dart';
import 'package:mustodo/pages/myhome/my_home.dart';
import 'package:mustodo/provider/page_notifier.dart';
import 'package:provider/provider.dart';

//git branch -M main를 허락없이 git bash에 쓰지말 것

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[ChangeNotifierProvider(create: (_)=>PageNotifier())],
      child: MaterialApp(
        title: 'Mustodo',
        home: Consumer<PageNotifier>(
          builder: (context, pageNotifier,child){
            return Navigator(
              pages: [
                MaterialPage(
                    key: ValueKey(MyHomePage.pageName),
                    child: MyHomePage(title: 'Mustodo')),
                if(pageNotifier.currentPage == Authpage.pageName)Authpage(),
                if(pageNotifier.currentPage == Dopage.pageName)Dopage(),
                if(pageNotifier.currentPage == Didpage.pageName)Didpage(),
                if(pageNotifier.currentPage == Destinationpage.pageName)Destinationpage(),
              ],

              onPopPage:(route, result){
                if(!route.didPop(result)) {
                  return false;
                }
                return true;
              },
            );
          },
        ),
      ),
    );
  }
}

