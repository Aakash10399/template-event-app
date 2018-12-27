import 'package:flutter/material.dart';
import 'package:carousel/carousel.dart';
import 'eventScreen.dart';
class navigatorScreenCreateState extends State<navigatorScreenCreate>
{
  bool isHome = true;
  bool isInfo = false;
  bool isHelp = false;
  void onTapped(int index){
    setState(() {
      if(index==0)
        setHome();
      else if(index==1)
        setInfo();
      else
        setHelp();
    });
  }
  void setHome() {
    setState(() {
      isHome = true;
      isInfo = false;
      isHelp = false;
    });
  }
  void setInfo() {
    setState(() {
      isHome = false;
      isInfo = true;
      isHelp = false;
    });
  }

  void setHelp() {
    setState(() {
      isHome = false;
      isInfo = false;
      isHelp = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height/4;
    ListView homeWidgets = new ListView(
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
            ].map((bgImg) => new Image(image: bgImg, width: wid, height: hei, fit: BoxFit.cover)).toList(),
            displayDuration: const Duration(seconds: 2),
          ),
        ),
        new Divider(height: 10.0,),
        new GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => eventScreenCreate()),
              );
            },
            child: Image.asset("lib/images/slide-1.jpg",width: wid,)
        ),
        new Divider(height: 10.0,),
        new GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => eventScreenCreate()),
              );
            },
            child: Image.asset("lib/images/slide-2.jpg",width: wid,)
        ),
        new Divider(height: 10.0,),
        new GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => eventScreenCreate()),
              );
            },
            child: Image.asset("lib/images/slide-3.jpg",width: wid,)
        ),
        new Divider(height: 10.0,),
        new GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => eventScreenCreate()),
              );
            },
            child: Image.asset("lib/images/slide-4.jpg",width: wid,)
        ),
        new Divider(height: 10.0,),
      ],
    );
    ListView infoWidgets = new ListView(
      children: <Widget>[
        new Divider(height: 10.0,),
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Fest Name',style: new TextStyle(fontSize: 30.0,color: Colors.black87)),
          ],
        ),
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
            ].map((bgImg) => new Image(image: bgImg, width: wid, height: hei, fit: BoxFit.cover)).toList(),
            displayDuration: const Duration(seconds: 2),
          ),
        ),
        new Divider(height: 20.0,),
        new Wrap(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text('Manipal: Tech Tatva, Manipal Institute of Technology’s (MIT) annual technical festival, ended with a drop in on-field participation in technical events, in comparison to previous years. The introduction of delegate cards for students was cited as one of the main reasons for the decrease in participation. Online events, however, continued to maintain the interest of students.\n All Rights Reserved.',style: new TextStyle(
                      fontSize: 15.0,color: Colors.black54
                  ),)
                ],
              ),
            ),
          ],
        ),
        new Divider(height: 20.0,),
      ],
    );
    ListView helpWidgets = new ListView(
      children: <Widget>[
        new Divider(height: 10.0,),
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('FAQs', style: new TextStyle(fontSize: 30.0),)
          ],
        ),
        new Divider(height: 10.0,),
        new Wrap(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Column(
                children: <Widget>[
                  new Text('Q - First question here?',style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black87),)
                ],
              ),
            ),
          ],
        ),
        new Wrap(children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0),
            child: new Column(
              children: <Widget>[
                new Text('A - This is the answer',style: new TextStyle(color: Colors.black87,fontSize: 15.0),)
              ],
            ),
          ),
        ],
        ),
        new Divider(height: 10.0,),
        new Wrap(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Column(
                children: <Widget>[
                  new Text('Q - First question here?',style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black87),)
                ],
              ),
            ),
          ],
        ),
        new Wrap(children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0),
            child: new Column(
              children: <Widget>[
                new Text('A - This is the answer',style: new TextStyle(color: Colors.black87,fontSize: 15.0),)
              ],
            ),
          ),
        ],
        ),
        new Divider(height: 10.0,),
        new Wrap(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Column(
                children: <Widget>[
                  new Text('Q - First question here?',style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black87),)
                ],
              ),
            ),
          ],
        ),
        new Wrap(children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0),
            child: new Column(
              children: <Widget>[
                new Text('A - This is the answer',style: new TextStyle(color: Colors.black87,fontSize: 15.0),)
              ],
            ),
          ),
        ],
        ),
        new Divider(height: 10.0,),
        new Wrap(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: new Column(
                children: <Widget>[
                  new Text('Q - First question here?',style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black87),)
                ],
              ),
            ),
          ],
        ),
        new Wrap(children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0),
            child: new Column(
              children: <Widget>[
                new Text('A - This is the answer',style: new TextStyle(color: Colors.black87,fontSize: 15.0),)
              ],
            ),
          ),
        ],
        ),
        new Divider(height: 20.0,),
        new Wrap(children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0),
            child: new Column(
              children: <Widget>[
                new Text('For further assistance please contact <CONTACT INFO GOES HERE>')
              ],
            ),
          )
        ],)
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: isHome==true?new Text('Home'):(isInfo==true?new Text('Info'):new Text('Help')),
        leading: new Icon(Icons.home),
      ),
      body: isHome==true?homeWidgets:(isInfo==true?infoWidgets:helpWidgets),
      bottomNavigationBar:
      new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            ), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
            onTap: onTapped,
            currentIndex: isHome==true?0:(isInfo==true?1:2),
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
class navigatorScreenCreate extends StatefulWidget {
  @override
  createState() => new navigatorScreenCreateState();
}