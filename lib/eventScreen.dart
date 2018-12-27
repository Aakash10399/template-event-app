import 'package:flutter/material.dart';
import 'package:carousel/carousel.dart';
class eventScreenCreateState extends State<eventScreenCreate>
{
  void popper(int index) {
    setState(() {
      Navigator.pop(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height/4;
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text('Event Page'),
        leading: new IconButton(
          icon: new Icon(Icons.home),
          onPressed: (){Navigator.pop(context);},
        ),
      ),
        body: new ListView(
          children: <Widget>[
            new Divider(height: 10.0,),
            new Container(
              width: wid,
              height: hei,
              child: new Carousel(
                children: [
                  new AssetImage('lib/images/slide-1.jpg'),
                  new AssetImage('lib/images/slide-2.jpg'),
                  new AssetImage('lib/images/slide-3.jpg'),
                  new AssetImage('lib/images/slide-4.jpg'),
                ].map((bgImg) => new Image(image: bgImg, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/4, fit: BoxFit.cover)).toList(),
                displayDuration: const Duration(seconds: 2),
              ),
            ),
            new Divider(height: 10.0,),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('Event Name',style: new TextStyle(
                  fontSize: 25.0,),)
              ],
            ),
          new Divider(height: 10.0,),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text('Announcements',style: new TextStyle(
                      fontSize: 20.0
                  ),)
                ],
              ),
            ),
            new Wrap(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Text('Important notifications go here.',style: new TextStyle(
                          fontSize: 15.0,color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            new Divider(height: 20.0,),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text('Introduction',style: new TextStyle(
                      fontSize: 20.0
                  ),)
                ],
              ),
            ),
            new Wrap(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Text('This is the introduction of the event. Data will be loaded here from the config file which will be set later after layout programming.',style: new TextStyle(
                          fontSize: 15.0,color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            new Divider(height: 20.0,),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text('Schedule & Eligibility',style: new TextStyle(
                      fontSize: 20.0
                  ),)
                ],
              ),
            ),
            new Wrap(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Text('Schedule and eligibilty data will go here, basic instructions to the event goes here too. Basically a trade off with the introduction tab.',style: new TextStyle(
                          fontSize: 15.0,color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
           new Divider(height: 20.0,),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text('Registration',style: new TextStyle(
                      fontSize: 20.0
                  ),)
                ],
              ),
            ),
            new Wrap(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Text('Registration link goes here',style: new TextStyle(
                          fontSize: 15.0,color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            new Divider(height: 20.0,),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text('Standings',style: new TextStyle(
                      fontSize: 20.0
                  ),)
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                    width: (MediaQuery.of(context).size.width-20)/3,
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text('1st')
                      ],
                    ),
                  ),
                  new Container(
                    width: (MediaQuery.of(context).size.width-20)/3,
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text('2nd')
                      ],
                    ),
                  ),
                  new Container(
                    width: (MediaQuery.of(context).size.width-20)/3,
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text('3rd')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Flexible(child: new Column(children: <Widget>[
                    new Text('Aakash Pahwa',style: new TextStyle(color: Colors.black54),)
                  ],)),
                  new Container(
                      height: 30.0,
                      width: 1.0,
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0)
                  ),
                  new Flexible(child: new Column(children: <Widget>[
                    new Text('Aakash Pahwa',style: new TextStyle(color: Colors.black54),)
                  ],)),
                  new Container(
                      height: 30.0,
                      width: 1.0,
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0)
                  ),
                  new Flexible(child: new Column(children: <Widget>[
                    new Text('Aakash Pahwa',style: new TextStyle(color: Colors.black54),)
                  ],)),
                ],
              ),
            ),
           new Divider(height: 20.0,),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text('Contact',style: new TextStyle(
                      fontSize: 20.0
                  ),)
                ],
              ),
            ),
            new Wrap(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Text('Organizer contact information goes here.',style: new TextStyle(
                          fontSize: 15.0,color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            new Divider(height: 20.0,),
          ],
        ),
        bottomNavigationBar:
        new Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
          ), // sets the inactive color of the `BottomNavigationBar`
          child: new BottomNavigationBar(
            onTap: popper,
              currentIndex: 0,
              fixedColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.info),
                  title: new Text("Info"),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.help),
                  title: new Text("Help"),
                ),
              ]),
        ),
    );
  }
}
class eventScreenCreate extends StatefulWidget {
  @override
  createState() => new eventScreenCreateState();
}