import 'package:flutter/material.dart';
import 'main.dart';


class weatherpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          height: double.infinity,
          width: double.infinity,
          decoration:new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/weatherpage.jpeg"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            leading: Icon(Icons.navigation),
            actions: [
              IconButton(
                icon: new Icon(Icons.location_city),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocationPage()));
                },
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             Expanded(flex :2,
               child: Container(
                 alignment: Alignment.centerLeft,
                 child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '32°',
                        style: TextStyle(
                          fontSize:90,fontFamily:'SparanMB',color: Colors.white,
                        ),
                      ),
                      Text(
                        '☀',
                        style: TextStyle(
                          fontSize:60,
                        ),
                      ),
                    ],
                  ),
               ),
             ),
              Expanded(flex: 1,
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'It\'s 🍦 time in mumbai!',
                    style: TextStyle(
                      fontSize: 50,fontFamily:'SparanMB',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    ],
    );

  }
}
