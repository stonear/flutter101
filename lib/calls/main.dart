import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {

  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const TextField(
            // obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              labelText: 'Search',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Row(
                  children: const [
                    Expanded(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        // leading: Icon(Icons.person, size: 56.0),
                        leading: Card(
                          shape: CircleBorder(),
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: FlutterLogo(
                              size: 45.0,
                              style: FlutterLogoStyle.horizontal
                            ),
                          ),
                        ),
                        // leading: FlutterLogo(
                        //     size: 56.0,
                        //     style: FlutterLogoStyle.horizontal
                        // ),
                        title: Text('Wahyu', style: TextStyle(color: Colors.red)),
                        subtitle: Text('Missed'),
                      ),
                    ),
                    Text('08.57'),
                    SizedBox(width: 7),
                    Icon(
                      Icons.info_outline,
                      color: Colors.blue,
                    ),
                  ]
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        // leading: Icon(Icons.person, size: 56.0),
                        leading: Card(
                          shape: CircleBorder(),
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: FlutterLogo(
                              size: 45.0,
                              style: FlutterLogoStyle.horizontal
                            ),
                          ),
                        ),
                        // leading: FlutterLogo(
                        //     size: 56.0,
                        //     style: FlutterLogoStyle.horizontal
                        // ),
                        title: Text('Ilham God'),
                        subtitle: Text('Outgoing'),
                      ),
                    ),
                    Text('17/8/45'),
                    SizedBox(width: 7),
                    Icon(
                      Icons.info_outline,
                      color: Colors.blue,
                    ),
                  ]
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}