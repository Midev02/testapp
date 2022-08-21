import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  _tapbutton() {
    print("Boutton appuyé");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: _tapbutton, icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
                print("Boutton non appuyé");
              },
              icon: Icon(Icons.alarm_add))
        ],
        backgroundColor: Colors.amberAccent,
      ),
      backgroundColor: Colors.greenAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            InkWell(

              child: Text("tape moi", style: TextStyle(fontSize: 23.1),),

              onTap: () => debugPrint("Hello"),
            )

          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
