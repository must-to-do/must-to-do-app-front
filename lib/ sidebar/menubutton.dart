import 'package:flutter/material.dart';
import 'package:mustodo/pages/auth/auth_page.dart';
import 'package:mustodo/pages/do/do_page.dart';
import 'package:mustodo/pages/did/did_page.dart';
import 'package:mustodo/pages/destination/destination_page.dart';
import 'package:mustodo/provider/page_notifier.dart';
import 'package:provider/provider.dart';
import 'package:mustodo/skeleton/skeleton_container.dart';

class menubutton extends StatefulWidget {

  @override
  createState() => _menubutton();
}

class _menubutton extends State<menubutton>{
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,

      child: Stack(
          children: [
            Align( //우산아이콘
              child: AnimatedAlign(
                alignment: toggle ? Alignment(0.9, 0.9) : Alignment(0.9, -0.46),
                duration: Duration(milliseconds: 150),
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(60.0),
                  ),

                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: () {
                        Provider.of<PageNotifier>(context, listen: false).goToOtherPage(Dopage.pageName);
                      },
                      icon: Icon(Icons.beach_access),
                    ),
                  ),
                ),
              ),
            ),

            Align( //음악아이콘
              child: AnimatedAlign(
                alignment: toggle ? Alignment(0.9, 0.9) : Alignment(0.9, 0),
                duration: Duration(milliseconds: 125),
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(60.0),
                  ),

                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: () {
                        Provider.of<PageNotifier>(context, listen: false).goToOtherPage(Didpage.pageName);
                      },
                      icon: Icon(Icons.audiotrack),
                    ),
                  ),
                ),
              ),
            ),


            Align( //하트아이콘
              child: AnimatedAlign(
                alignment: toggle ? Alignment(0.9, 0.9) : Alignment(0.9, 0.45),
                duration: Duration(milliseconds: 100),
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(60.0),
                  ),

                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: () {
                        Provider.of<PageNotifier>(context, listen: false).goToOtherPage(Destinationpage.pageName);
                      },
                      icon: Icon(Icons.favorite),
                    ),
                  ),
                ),
              ),
            ),

            Align( //메뉴아이콘
              alignment: Alignment(0.9, 0.9),
              child: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  color: toggle ? Colors.yellow[600] : Colors.yellow[300],
                  borderRadius: BorderRadius.circular(60.0),
                ),

                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      toggle ? setState(() {toggle = false;}) : setState(() {toggle = true;
                      });
                    },
                    icon: Icon(Icons.menu),
                  ),
                ),
              ),
            ),
          ],
        ),

    );
  }


}