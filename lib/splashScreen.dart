import 'package:flutter/material.dart';
class splashScreenCreateState extends State<splashScreenCreate>
{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Template Event App',
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
      home: new Container(
        decoration: new BoxDecoration(color:Colors.white),
        child:new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[new CircleAvatar(backgroundImage: new AssetImage('lib/images/iecse.png'),radius: 100.0,),
            new Divider(color: Colors.white,) ,
            new CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),)],
          ),
        ),
      ),
    );
  }
}
class splashScreenCreate extends StatefulWidget {
  @override
  createState() => new splashScreenCreateState();
}