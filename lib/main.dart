import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'brain.dart';

int indexP = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Task By Ujjwal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1 By Ujjwal"),
        actions: <Widget>[Icon(Icons.person)],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterLogo(
                    size: 50,
                  ),
                  "Flutter".text.italic.tight.size(50).make(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              DataShow(), // Show Data here
            ],
          ),
        ),
      ),
    );
  }
}

class DataShow extends StatefulWidget {
  DataShow({Key key}) : super(key: key);

  @override
  _DataShowState createState() => _DataShowState();
}

class _DataShowState extends State<DataShow> {
  Brain calling = Brain();

  int imgBot() {
    int imgg = calling.getImageUrl();
    return imgg;
  }

  @override
  Widget build(BuildContext context) {
    int pp = imgBot();
    return Column(
      children: <Widget>[
        "Google Developer Experts in Flutter".text.bold.size(20).make(),
        SizedBox(
          height: 10,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              color: Vx.yellow500,
            ),
            "Featured GDE\'s Of India".text.extraBold.make(),
          ],
        ),
        // ListTile(
        //   leading: Icon(
        //     Icons.star,
        //     color: Colors.yellow,
        //   ),
        //   title: "Featured GDE's".text.bold.size(15).start.make(),
        // ),
        SizedBox(
          height: 20,
        ),

        Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                maxRadius: 90,
                backgroundImage: AssetImage('assets/$pp.png'),
              ),
              SizedBox(
                height: 10,
              ),
              calling.getNames().text.bold.size(20).make(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: "MY BIO".text.extraBold.size(15).make(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: calling
                    .getBio()
                    .text
                    .size(15)
                    .make(),
              ),
            ],
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Vx.blue500,
              child: 'Press for Next GDE'.text.make(),
              onPressed: () {
                setState(() {
                  bool counter = calling.isFinished();
                  if (counter == true) {
                    calling.reset();
                  } else {
                    calling.nextPos();
                  }
                });
              },
            )
          ],
        ),
      ],
    );
  }
}
