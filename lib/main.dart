import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const HomePage(),
      routes: {
        'HomePage': (context) => const HomePage(),
        'BedRoomPage': (context) => const BedRoomPage(pageTitle: "Bed Room"),
        'BathRoomPage': (context) => const BathRoomPage(pageTitle: "Bath Room"),
      },
      initialRoute: 'HomePage',
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text(
          "Welcome Home",
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'Room List',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                title: const Text(
                  'Bed Room',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('BedRoomPage');
                },
              ),
            ),
            const Card(
              color: Colors.blueGrey,
              child: ListTile(
                title: Text(
                  'Bath Room',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward, color: Colors.white),
                // onTap: () {
                //   Navigator.of(context).pop();
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (BuildContext context) =>
                //           const Pages(pageTitle: 'Bath Room')));
                // },
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
    );
  }
}

class BedRoomPage extends StatefulWidget {
  final String pageTitle;

  const BedRoomPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _BedRoomPageState createState() => _BedRoomPageState();
}

class _BedRoomPageState extends State<BedRoomPage> {
  bool _isSwitched = false;

  void setIsSwitched() {
    setState(() {
      _isSwitched = !_isSwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.pageTitle,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              _isSwitched
                  ? Image.asset('img/bulb/switch-on-light.png')
                  : Image.asset('img/switch-off-light.png'),
              Switch(
                value: _isSwitched,
                onChanged: (value) {
                  setIsSwitched();
                },
                activeTrackColor: Colors.red[200],
                activeColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'Room List',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                title: const Text(
                  'Bed Room',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('BedRoomPage');
                },
              ),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                title: const Text(
                  'Bath Room',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('BathRoomPage');
                },
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
    );
  }
}

class BathRoomPage extends StatefulWidget {
  final String pageTitle;

  const BathRoomPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _BathRoomPageState createState() => _BathRoomPageState();
}

class _BathRoomPageState extends State<BathRoomPage> {
  bool _isSwitched = false;

  void setIsSwitched() {
    setState(() {
      _isSwitched = !_isSwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.pageTitle,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              _isSwitched
                  ? Image.asset('img/switch-on-light.png')
                  : Image.asset('img/switch-off-light.png'),
              Switch(
                value: _isSwitched,
                onChanged: (value) {
                  setIsSwitched();
                },
                activeTrackColor: Colors.red[200],
                activeColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'Room List',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                title: const Text(
                  'Bed Room',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('BedRoomPage');
                },
              ),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                title: const Text(
                  'Bath Room',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('BathRoomPage');
                },
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
    );
  }
}

class Light extends StatefulWidget {
  final String title;
  final bool isSwitched;
  final Function setParentState;

  const Light({
    Key? key,
    required this.title,
    required this.isSwitched,
    required this.setParentState,
  }) : super(key: key);

  @override
  _LightState createState() => _LightState();
}

class _LightState extends State<Light> {
  //bool _switch = false;
  @override
  Widget build(BuildContext context) {
    //_switch = widget.isSwitched;
    return Center(child: _buildElement());
  }

  Widget _buildElement() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        widget.isSwitched
            ? Image.asset('img/switch-on-light.png')
            : Image.asset('img/switch-off-light.png'),
        _buildSwitchButton(),
      ],
    );
  }

  Widget _buildSwitchButton() {
    return Switch(
      value: widget.isSwitched,
      onChanged: (value) {
        widget.setParentState();
      },
      activeTrackColor: Colors.red[200],
      activeColor: Colors.red,
    );
  }
}
