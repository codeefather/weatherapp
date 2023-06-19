import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepOrange,
          appBar: AppBar(
              title: const Text("Weather NEWS"),
              centerTitle: true,
            ),
          body: _buildBody(),
    ));
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: _textFieldFill(),
        ),
         SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _cityDetailFill(),
                const Divider(),
                _temperatureFill(),
                const Divider(),
                _extraWeatherDetailsFill(),
                const Divider(),
                _bottomDetailFill()
              ],
            ),
          ),
        ),
        //_bottomDetailFill(),
      ],
    ),
  );
}

TextField _textFieldFill(){
  return const TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.search, size: 30, color: Colors.white),
        border: InputBorder.none,
        hintText: 'Enter City Name',
        hintStyle: TextStyle(color: Colors.white)
      )
  );
}

Row _cityDetailFill() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Murmansk Oblast, RU', style: TextStyle(color: Colors.white, fontSize: 24))
            ],
          ),
          SizedBox(width: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Friday, Jun 18, 2023', style: TextStyle(color: Colors.white, fontSize: 12))
            ],
          )
        ],
      ),
    ],
  );
}

Row _temperatureFill(){
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.white,
          )
        ]
      ),
      SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('14 F', style: TextStyle(color: Colors.white, fontSize: 36))
                ],
              ),
              SizedBox(width: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SUNNY', style: TextStyle(color: Colors.white, fontSize: 24))
                ],
              )
            ],
          ),
        ],
      )
    ],
  );
}

Row _extraWeatherDetailsFill() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(width: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('5 km/hr', style: TextStyle(color: Colors.white, fontSize: 12))
            ],
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(width: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('5 km/hr', style: TextStyle(color: Colors.white, fontSize: 12))
            ],
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(width: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('5 km/hr', style: TextStyle(color: Colors.white, fontSize: 12))
            ],
          )
        ],
      )
    ],
  );
}

Container _bottomDetailFill() {
  return Container(
    height: 140,
    child: ListView(
      scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.indigo[100],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 150, height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('FRIDAY', style: TextStyle(color: Colors.white, fontSize: 36))
                      ],
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text('6 F ', style: TextStyle(color: Colors.white, fontSize: 36)),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 42,
                  )
                  ],
                ),
              ]
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 200,
            height: 200,
            color: Colors.indigo[100],
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 150, height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('SUNDAY', style: TextStyle(color: Colors.white, fontSize: 36))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('6 F ', style: TextStyle(color: Colors.white, fontSize: 36)),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                        size: 42,
                      )
                    ],
                  ),
                ]
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 200,
            height: 200,
            color: Colors.indigo[100],
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 150, height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('SATURDAY', style: TextStyle(color: Colors.white, fontSize: 36))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('6 F ', style: TextStyle(color: Colors.white, fontSize: 36)),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                        size: 42,
                      )
                    ],
                  ),
                ]
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 200,
            height: 200,
            color: Colors.indigo[100],
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 150, height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('TUESDAY', style: TextStyle(color: Colors.white, fontSize: 36))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('6 F ', style: TextStyle(color: Colors.white, fontSize: 36)),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                        size: 42,
                      )
                    ],
                  ),
                ]
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 200,
            height: 200,
            color: Colors.indigo[100],
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 150, height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('MONDAY', style: TextStyle(color: Colors.white, fontSize: 36))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('6 F ', style: TextStyle(color: Colors.white, fontSize: 36)),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                        size: 42,
                      )
                    ],
                  ),
                ]
            ),
          )
        ],
    ),
  );
}



// return Row(
// mainAxisAlignment: MainAxisAlignment.start,
// children: <Widget>[
// Container(
// height: 20,
// child: ListView(
// scrollDirection: Axis.horizontal,
// children: const [
// ListTile(
// title: Text('Sun'),
// subtitle: Text('Today Clear'),
// leading: Icon(Icons.wb_sunny),
// trailing: Icon(Icons.keyboard_arrow_right),
// ),
// ListTile(
// title: Text('Cloudy'),
// subtitle: Text('Today Cloudy'),
// leading: Icon(Icons.wb_cloudy),
// ),
// ListTile(
// title: Text('Snow'),
// subtitle: Text('Today Snow'),
// leading: Icon(Icons.ac_unit),
// ),
// ],
// ),
// )
// ],
// );
  // ListTile(
  //   title: Text('Sun'),
  //   subtitle: Text('TODAY CLEAR'),
  //   //leading: Icon(Icons.wb_sunny, color: Colors.white),
  // ),
  // ListTile(
  // title: Text('Sun'),
  // subtitle: Text('TODAY CLEAR'),
  // //leading: Icon(Icons.wb_sunny, color: Colors.white),
  // ),
  // ListTile(
  // title: Text('Sun'),
  // subtitle: Text('TODAY CLEAR'),
  // //leading: Icon(Icons.wb_sunny, color: Colors.white),
  // ),
  // ListTile(
  // title: Text('Sun'),
  // subtitle: Text('TODAY CLEAR'),
  // //leading: Icon(Icons.wb_sunny, color: Colors.white),
  // ),
  // ListTile(
  // title: Text('Sun'),
  // subtitle: Text('TODAY CLEAR'),
  // //leading: Icon(Icons.wb_sunny, color: Colors.white),
  // ),
  // ListTile(
  // title: Text('Sun'),
  // subtitle: Text('TODAY CLEAR'),
  // //leading: Icon(Icons.wb_sunny, color: Colors.white),
  // ),
  // ListTile(
  // title: Text('Sun'),
  // subtitle: Text('TODAY CLEAR'),
  // //leading: Icon(Icons.wb_sunny, color: Colors.white),
  // )


