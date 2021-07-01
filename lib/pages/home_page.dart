
//import 'dart:js';
import 'package:responsive/constants/constants.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pandabar/model.dart';
import 'package:responsive/Fragments/homePage.dart';
import 'package:responsive/feed/disease.dart';
//import 'package:responsive/models/app_localization.dart';
import 'package:responsive/models/language.dart';
import 'package:responsive/models/modalHelper.dart';
import 'package:responsive/pages/data.dart';
import 'package:responsive/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive/stores/login_store.dart';
import 'package:responsive/theme.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import '../weather.dart';
import 'package:responsive/feed/display_feed_ctrl.dart';
import 'package:responsive/feed/feed_details.dart';
import 'package:responsive/feed/feed_template.dart';
import 'package:responsive/models/feed_model.dart';
//import 'package:responsive/Fragments/contactPage.dart';
import 'package:responsive/Fragments/WeatherPrediction.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'detail_page.dart';
BuildContext testContext;


class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  int currentIndex;

  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
    switch (currentIndex){
      case 0:
        Navigator.push( context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        break;
      case 1:
        Navigator.push( context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
        break;
      case 2:
        Navigator.push( context,
          MaterialPageRoute(builder: (context) =>  DiseaseApp()),
        );
        break;
        
    
  }
  }

  final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
   backgroundColor: MyColors.primaryColorLight;
    return Consumer<LoginStore>(
      builder: (_, loginStore, __) {
        var pageRoutes;
        return Scaffold(
          backgroundColor: Colors.white,
           appBar:AppBar(

            title: Text('Welcome User',style: TextStyle(color: Colors.black)),
            actions: [

              IconButton(    icon: Icon(Icons.exit_to_app),    color: Colors.black,    highlightColor: Colors.red,    hoverColor: Colors.green,    focusColor: Colors.purple,
                splashColor: Colors.yellow,    disabledColor: Colors.amber,
                iconSize: 30,
                onPressed: () {
                  LoginStore().signOut(context);
                },  ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),

            ],

             backgroundColor:MyColors.primaryColorLight,

          ),


body: Container(

),
       // body:Container(
       //    child: Column(
       //      mainAxisAlignment: MainAxisAlignment.center,
       //      children: [
       //        Row(),
       //        SizedBox(height: 16.0),
       //        SizedBox(height: 8.0),
       //        SizedBox(height: 8.0),
       //        SizedBox(height: 24.0),
       //
       //        // Text(
       //        //       'You are now signed in using your mobile number . To sign out of your account, click the "Sign Out" button below.',
       //        //   style: TextStyle(
       //        //       color: Colors.black, fontSize: 20, letterSpacing: 0.4),
       //        // ),
       //        SizedBox(height: 15),
       //        ElevatedButton(
       //          style: ButtonStyle(
       //            backgroundColor: MaterialStateProperty.all(
       //              Colors.lightBlueAccent,
       //
       //            ),
       //            shape: MaterialStateProperty.all(
       //              RoundedRectangleBorder(
       //                borderRadius: BorderRadius.circular(26),
       //              ),
       //            ),
       //          ),
       //          onPressed: () async {
       //            Navigator.push( context,
       //              MaterialPageRoute(builder: (context) => MyApp()),
       //            );
       //          },
       //          child: Padding(
       //            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
       //            child: Text(
       //              'Weather Report',
       //              style: TextStyle(
       //                fontSize: 20,
       //                fontWeight: FontWeight.bold,
       //                color: Colors.white,
       //                letterSpacing: 2,
       //              ),
       //            ),
       //          ),
       //        ),
       //        ElevatedButton(
       //          style: ButtonStyle(
       //            backgroundColor: MaterialStateProperty.all(
       //              Colors.green,
       //            ),
       //            shape: MaterialStateProperty.all(
       //              RoundedRectangleBorder(
       //                borderRadius: BorderRadius.circular(26),
       //              ),
       //            ),
       //          ),
       //          onPressed: () async {
       //            Navigator.push( context,
       //              MaterialPageRoute(builder: (context) => DiseaseApp()),
       //            );
       //          },
       //          child: Padding(
       //            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
       //            child: Text(
       //              'Scan Crop',
       //              style: TextStyle(
       //                fontSize: 20,
       //                fontWeight: FontWeight.bold,
       //                color: Colors.white,
       //                letterSpacing: 2,
       //              ),
       //            ),
       //          ),
       //        ),
       //        SizedBox(height: 16.0),
       //        ElevatedButton(
       //          style: ButtonStyle(
       //            backgroundColor: MaterialStateProperty.all(
       //              Colors.redAccent,
       //            ),
       //            shape: MaterialStateProperty.all(
       //              RoundedRectangleBorder(
       //                borderRadius: BorderRadius.circular(26),
       //              ),
       //            ),
       //          ),
       //          onPressed: () async {
       //           LoginStore().signOut(context);
       //          },
       //          child: Padding(
       //            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
       //            child: Text(
       //              'Sign Out',
       //              style: TextStyle(
       //                fontSize: 20,
       //                fontWeight: FontWeight.bold,
       //                color: Colors.white,
       //                letterSpacing: 2,
       //              ),
       //            ),
       //          ),
       //        ),
       //      ],
       //    ),
       // )
          bottomNavigationBar: BubbleBottomBar(
            backgroundColor: MyColors.primaryColorLight,
              hasNotch: true,
              fabLocation: BubbleBottomBarFabLocation.end,
              opacity: .2,
              currentIndex: currentIndex,
              onTap: changePage,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(
                      16)), //border radius doesn't work when the notch is enabled.
              elevation: 8,
              items: <BubbleBottomBarItem>[
                BubbleBottomBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.dashboard,
                      color: Colors.black,

                    ),
                    activeIcon: Icon(
                      Icons.dashboard,
                      color: Colors.black,

                    ),
                    title: Text("Home",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),

                BubbleBottomBarItem(
                    backgroundColor: Colors.deepPurple,
                    icon: Icon(
                      Icons.cloud,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      Icons.cloud,
                      color: Colors.black,
                    ),
                    title: Text("Weather Prediction",style: TextStyle(fontSize: 20,color: Colors.black))),
                BubbleBottomBarItem(
                    backgroundColor: Colors.black,
                    icon: Icon(
                      Icons.local_florist,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      Icons.local_florist,
                      color: Colors.black,
                    ),
                    title: Text("Pest Analysis",style: TextStyle(fontSize: 16,color: Colors.black))),

              ],
            ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: MyColors.primaryColorLight,
            child: Icon(Icons.call,color: Colors.white),
            onPressed: () async {
              await launch('tel:18001801551');
            },
          ),

        );
      },
    );
  }

}



