// import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './calls/main.dart';
import './camera/main.dart';
import './chats/main.dart';
import './status/main.dart';

// ignore: unused_element
void _logError(String code, String? message) {
  if (message != null) {
    if (kDebugMode) {
      print('Error: $code\nError Message: $message');
    }
  } else {
    if (kDebugMode) {
      print('Error: $code');
    }
  }
}

// List<CameraDescription> _cameras = [];
Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  // try {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   _cameras = await availableCameras();
  // } on CameraException catch (e) {
  //   _logError(e.code, e.description);
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  int _selectedIndex = 3;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   'Index 0: Status',
    //   style: optionStyle,
    // ),
    StatusScreen(),
    // Text(
    //   'Index 1: Calls',
    //   style: optionStyle,
    // ),
    CallsScreen(),
    // Text(
    //   'Index 2: Camera',
    //   style: optionStyle,
    // ),
    CameraApp(),
    // Text(
    //   'Index 3: Chats',
    //   style: optionStyle,
    // ),
    ChatsScreen(),
    Text(
      'Index 4: Settings',
      style: optionStyle,
    ),
  ];

  static const List<String> _titles = <String>[
    'Status',
    'Calls',
    'Camera',
    'Chats',
    'Settings',
  ];

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // title: _widgetOptions.elementAt(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles.elementAt(_selectedIndex)),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.catching_pokemon_outlined),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.blue,
        // unselectedItemColor: Colors.white,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      )
    );
  }
}
