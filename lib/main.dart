import 'package:flutter/material.dart';
import 'package:climate_app/weather.dart';
void main() {
  runApp(
    MaterialApp(
      home: LocationPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    ),
  );
}

// Create WeatherPage in a separate file
class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/weather1.jpeg'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: FlatButton(
            child:Align(
              alignment: Alignment.center,
             child: Text(
              'Get Weather',
              style: TextStyle( fontFamily:'SparanMB',color: Colors.white,fontSize: 30,),
            ),
          ),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => weatherpage()));
            },
          ),

    );
  }
}
