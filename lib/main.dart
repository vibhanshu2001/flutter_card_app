import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
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
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {},
        ),
        title: new Text(
          'Nearby',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.black,

          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: FlutterLogo(
              textColor: Colors.blue,
              size: 40.0,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  left: 20.0,
                  child: Container(
                    width: 260.0,
                    height: 400.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  child: Container(
                    width: 280.0,
                    height: 400.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Container(
                  width: 300.0,
                  height: 400.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/girls.jpeg'),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  top: 320.0,
                  left: 15.0,
                  child: Container(
                    width: 270.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1.0,
                            color: Colors.black12,
                            spreadRadius: 2.0,
                          ),
                        ]),
                    child: Container(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Kayla',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Image.asset(
                                'assets/simbolo.png',
                                height: 20.0,
                                width: 20.0,
                              ),
                              SizedBox(width: 110.0,),
                              Text(
                                '5.8km',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.0,),
                          Row(
                            children: [
                              Text(
                                'Fate is wonderful',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){},
                  elevation: 0.0,
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                  backgroundColor: Colors.white,
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      color: Colors.transparent,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                    
                  ),
                  child: Container(
                    child: Center(
                      child: IconButton(
                        icon: Image.asset('assets/chatbubble.png'),
                        color: Colors.lightBlueAccent[300],
                        onPressed: () {},

                      ),
                    ),
                  ),
                ),
                FloatingActionButton(onPressed: (){},
                  elevation: 0.0,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
