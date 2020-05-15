import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'brain.dart';

int indexP = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Task By Ujjwal',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1 By Ujjwal"),
        leading: FlutterLogo(),
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
      endDrawer: Drawer(
        elevation: 20.0,
        child: ListView(
          // Important: Remove any padding from the ListView.

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: "Ujjwal Kumar Sittu".text.make(),
                accountEmail: "hello@ujjwalsittu.in".text.make(),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://musocial-assets.s3.amazonaws.com/upload/photos/2020/05/cnHX49aOAtjRvGfgtG1F_04_73be8eee9f74d4f12bd9c661e59f5231_avatar_full.jpg'),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://musocial-assets.s3.amazonaws.com/upload/photos/2020/05/Zy9ElrfXyFDDq49CCn7V_03_67b311673a383395bf5172a1ce7f9b8f_avatar_full.jpeg'),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://musocial-assets.s3.amazonaws.com/upload/photos/2020/04/cug7VN6WOSz8PWhIduu1_28_290401dd0fac004f5044e42ef863f819_avatar_full.jpg'),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
            ),
            ListTile(
              leading: Icon(Icons.android),
              title: Text('Google GDE\'s'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              title: Text('About Me'),
              leading: Icon(Icons.person),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
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
                child: calling.getBio().text.size(15).make(),
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
