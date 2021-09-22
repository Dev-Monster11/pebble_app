import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _counter = 0;
  double _sessionLength = 15;

  double _tappingIntensity = 50;
  void _setSessionLengthChanged(a) {
    setState(() {
      _sessionLength = a;
    });
  }

  void _tappingIntensityChanged(a) {
    setState(() {
      _tappingIntensity = a;
    });
  }

  void _onStart() {}

  void _onPause() {}

  void _onStop() {}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Home'),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(30),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ElevatedButton(
                  onPressed: () => print("asdf"), child: Text("Pebble1")),
              ElevatedButton(
                  onPressed: () => print("sdf"), child: Text("Pebble2")),
              Row(
                children: [
                  Icon(
                    Icons.devices_other_outlined,
                    color: Colors.red,
                  ),
                  Text(
                    "Disconnected",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Session Length", style: TextStyle(color: Colors.white)),
                Slider(
                  onChanged: _setSessionLengthChanged,
                  value: _sessionLength,
                  min: 0,
                  max: 60,
                ),
                Text(_sessionLength.ceil().toString() + " min",
                    style: TextStyle(color: Colors.white))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tapping Intensity",
                    style: TextStyle(color: Colors.white)),
                Slider(
                  onChanged: _tappingIntensityChanged,
                  value: _tappingIntensity,
                  min: 0,
                  max: 100,
                ),
                Text(_tappingIntensity.ceil().toString() + " %",
                    style: TextStyle(color: Colors.white))
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Tapping duration",
                            style: TextStyle(color: Colors.white)),
                        Padding(
                            padding: EdgeInsets.only(right: 50, bottom: 50)),
                        Text("4500", style: TextStyle(color: Colors.white))
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 50)),
                    Row(
                      children: [
                        Text("Tapping pause",
                            style: TextStyle(color: Colors.white)),
                        Padding(padding: EdgeInsets.only(right: 50)),
                        Text("9000", style: TextStyle(color: Colors.white)),
                      ],
                    )
                  ],
                ),
                Icon(Icons.low_priority)
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: _onStart,
                    child: Row(children: [
                      Icon(Icons.play_arrow),
                      Text("Start"),
                    ])),
                ElevatedButton(
                    onPressed: _onPause,
                    child: Row(children: [Icon(Icons.pause), Text("Pause")])),
                ElevatedButton(
                    onPressed: _onStop,
                    child: Row(children: [Icon(Icons.stop), Text("Stop")]))
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Row(
              children: [
                Text("COM:", style: TextStyle(color: Colors.white)),
                Padding(padding: EdgeInsets.only(right: 50)),
                Text("089604945009000", style: TextStyle(color: Colors.white))
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Row(
              children: [
                Text("DEL:", style: TextStyle(color: Colors.white)),
                Padding(padding: EdgeInsets.only(right: 50)),
                Text("0500000000000000", style: TextStyle(color: Colors.white))
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Row(
              children: [
                Text("WRD:", style: TextStyle(color: Colors.white)),
                Padding(padding: EdgeInsets.only(right: 50)),
                Text("BREATH OUT", style: TextStyle(color: Colors.white))
              ],
            ),
          ])),
    );
  }
}
