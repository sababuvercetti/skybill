import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkyBill',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TabPages=<Widget>[
    TabOne(),
    TabTwo()
  ];
  final Tabs=<Tab>[
      Tab(text: "MY BILLS",),
      Tab(text:"GROUPED BILLS")
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: ListTile(
            title: Text("Skybill", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Samuel Baraka",style: TextStyle(color: Colors.white),),
          ),
          bottom: TabBar(
            tabs: Tabs,
          ),
          actions: <Widget>[
            IconButton(icon: Icon(CupertinoIcons.bell,color: Colors.white,size: 30,),onPressed: (){},tooltip: "Notification",),
            IconButton(icon: Icon(CupertinoIcons.person,color: Colors.white,size: 30),onPressed: (){},tooltip: "Account",),
            IconButton(icon: Icon(Icons.more_vert,color: Colors.white),onPressed: (){},tooltip: "More Options",)
          
          ],
        ),
        body: Container(
          color: Colors.red,
          child: TabBarView(
            children: TabPages,
          ),
        ),
      ),
    );
  }
}

class TabOne extends StatefulWidget {
  @override
  _TabOneState createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: <Widget>[
          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.blue,),
              footer: Material(color: Colors.white,child: Text("Seasonal Park")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.green,),
              footer: Material(color: Colors.white,child: Text("NHIF")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.purple,),
              footer: Material(color: Colors.white,child: Text("Daily Parking")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.indigo,),
              footer: Material(color: Colors.white,child: Text("Nairobi Water")),
            ),
          ),
        
        Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.red,),
              footer: Material(color: Colors.white,child: Text("KPLC Tokens")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.orange,),
              footer: Material(color: Colors.white,child: Text("Airtime")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.yellow,),
              footer: Material(color: Colors.white,child: Text("KPLC PostPaid")),
            ),
          ),
        ],
        
      ),
      floatingActionButton: CupertinoButton(padding: EdgeInsets.all(4),onPressed: (){},color: Colors.blue,child: Text("MANAGE BILLS", style: TextStyle(color: Colors.white,),)),
    );

  }
}

class TabTwo extends StatefulWidget {
  @override
  _TabTwoState createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: <Widget>[
          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.blue,),
              footer: Material(color: Colors.white,child: Text("Seasonal Park")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.green,),
              footer: Material(color: Colors.white,child: Text("NHIF")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.purple,),
              footer: Material(color: Colors.white,child: Text("Daily Parking")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.indigo,),
              footer: Material(color: Colors.white,child: Text("Nairobi Water")),
            ),
          ),
        
        Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.red,),
              footer: Material(color: Colors.white,child: Text("KPLC Tokens")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.orange,),
              footer: Material(color: Colors.white,child: Text("Airtime")),
            ),
          ),

          Card(
            child: GridTile(
              child: FlutterLogo(colors: Colors.yellow,),
              footer: Material(color: Colors.white,child: Text("KPLC PostPaid")),
            ),
          ),
        ],
        
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add,color: Colors.white),
        ),
    );
  }
}