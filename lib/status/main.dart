import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {

  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Text(
    //     'Index 0: Status'
    // );
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
          titleSection,
          Row(
            children: const [
              Expanded(
                child: Text(
                  'Recent Updates',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: const <Widget>[
              ListTile(
                contentPadding: EdgeInsets.zero,
                // leading: Icon(Icons.person, size: 56.0),
                leading: Card(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
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
                title: Text('Wahyu'),
                subtitle: Text('1m ago'),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                // leading: Icon(Icons.settings, size: 56.0),
                leading: Card(
                   shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  margin: EdgeInsets.all(0),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: FlutterLogo(
                      size: 45.0,
                      style: FlutterLogoStyle.stacked
                    ),
                  ),
                ),
                // leading: FlutterLogo(
                //   size: 56.0,
                //    style: FlutterLogoStyle.stacked
                // ),
                title: Text('Ilham God'),
                 subtitle: Text('2m ago'),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    'Viewed Updates',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: const <Widget>[
              ListTile(
                contentPadding: EdgeInsets.zero,
                // leading: Icon(Icons.person, size: 56.0),
                leading: Card(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
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
                //   size: 56.0,
                //   style: FlutterLogoStyle.horizontal
                // ),
                title: Text('Kurniawan'),
                subtitle: Text('3m ago'),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                // leading: Icon(Icons.settings, size: 56.0),
                leading: Card(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  margin: EdgeInsets.all(0),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: FlutterLogo(
                      size: 45.0,
                      style: FlutterLogoStyle.stacked
                    ),
                  ),
                ),
                // leading: FlutterLogo(
                //   size: 56.0,
                //    style: FlutterLogoStyle.stacked
                // ),
                title: Text('Wisnu'),
                 subtitle: Text('4m ago'),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                // leading: Icon(Icons.person, size: 56.0),
                leading: Card(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
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
                //   size: 56.0,
                //   style: FlutterLogoStyle.horizontal
                // ),
                title: Text('Pande'),
                subtitle: Text('5m ago'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.only(top: 20, bottom: 20),
  child: Row(
    children: const [
      Expanded(
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          // leading: Icon(Icons.settings, size: 56.0),
          leading: Card(
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.blue,
                width: 1.0,
              ),
            ),
            margin: EdgeInsets.all(0),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: FlutterLogo(
                size: 45.0,
                style: FlutterLogoStyle.stacked
              ),
            ),
          ),
          // leading: FlutterLogo(
          //   size: 56.0,
          //     style: FlutterLogoStyle.stacked
          // ),
          title: Text('My Status'),
            subtitle: Text('Add to my status'),
        ),
      ),
      /*3*/
      Icon(
        Icons.camera_alt_outlined,
        // color: Colors.red[500],
      ),
      SizedBox(width: 32),
      Icon(
        Icons.edit_rounded,
        // color: Colors.red[500],
      ),
    ],
  ),
);