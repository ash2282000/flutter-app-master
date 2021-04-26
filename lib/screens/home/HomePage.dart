import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green[200],
        title: Center(
          child: Text(
              "Kissan Konnect",
              style: TextStyle(
                color: Colors.black,
              )
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _key.currentState.openDrawer();
          },
          color: Colors.black,
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications_none),
              onPressed: () {},
              color: Colors.black)

        ],

      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                      color: Colors.green[50],
                      width: double.infinity,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: "Search here",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                              "Browse categories",
                              style: TextStyle(
                                  fontSize: 15
                              )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextButton(
                            child: Text('See all'),

                            style: TextButton.styleFrom(

                                primary: Colors.black,
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  height: 100.0,
                  child:
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex:5,
                              child: Icon(
                                Icons.fastfood_rounded,

                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                  "wheat"
                              ),
                            )
                          ],
                        ),
                        width: 100.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex:5,
                              child: Icon(
                                Icons.fastfood_rounded,

                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                  "vegetable"
                              ),
                            )
                          ],
                        ),
                        width: 100.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex:5,
                              child: Icon(
                                Icons.fastfood_rounded,

                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                  "fruits"
                              ),
                            )
                          ],
                        ),
                        width: 100.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex:5,
                              child: Icon(
                                Icons.fastfood_rounded,

                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                  "poultry"
                              ),
                            )
                          ],
                        ),
                        width: 100.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex:5,
                              child: Icon(
                                Icons.fastfood_rounded,

                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                  "fish"
                              ),
                            )
                          ],
                        ),
                        width: 100.0,
                      ),
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}
