import 'package:flutter/material.dart';
import 'package:whatsup_salmi_app/CHAT_SCREN.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff075E54)
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _tabcontroller ;
@override
initState() {
  super.initState();
  _tabcontroller = new TabController(vsync: this,initialIndex:1,length: 4 );
  }



@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: new Text("Whatsup"),
        elevation: 0.2,
        bottom: new TabBar(
         controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs: <Widget>[
           new Tab(icon: new Icon(Icons.camera_alt)),
           new Tab(text: "CALLS"),
           new Tab(text: "STATUS"),
           new Tab(text: "CHAT")

          ],


        ),

      ),
      body: new TabBarView(
          controller: _tabcontroller,
          children: <Widget>[
          Icon(Icons.camera_alt),
          Text("CALLS"),
          Text("STATUS"),
          new CHAT_SCREN()
        ],

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff075E54),
        child: Icon(Icons.add,),
        mini: true,
      ),

    );

  }
}
