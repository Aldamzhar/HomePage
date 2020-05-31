import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//      statusBarColor: Color(0xffFF0000),
//    ));


    return MaterialApp(
      home: Scaffold(

          appBar: AppBar(
            title: Text('Take&Leave'),
            backgroundColor: Color(0xffFF0000),
          ),

          body: Center(

            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/4199139/pexels-photo-4199139.jpeg?cs=srgb&dl=couple-buying-groceries-at-a-supermarket-4199139.jpg&fm=jpg"),
                        fit: BoxFit.cover)
                ),

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding (
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                      child: Text(
                        "Welcome to the App!",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontFamily: 'RobotoMono'),

                      ),
                    ),
                    Container(
                        width: 300,
                        child: new Theme (
                            data: new ThemeData(
                              hintColor: Colors.grey,
                              inputDecorationTheme: new InputDecorationTheme(
                                  labelStyle: new TextStyle(color: Colors.red)),
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.red,
                            ),
                            child: TextField(

                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffFF0000)),
                                ),
                                labelText: 'Phone Number',
                                hintText: 'Example: +7777888899',
                                hintStyle: TextStyle(
                                  color: Colors.redAccent,
                                ),
                              ),

                              autofocus: false,
                            )
                        )
                    ),

                    SizedBox(height: 30),

                    Container(
                        width: 300,
                        child: new Theme (
                            data: new ThemeData(
                              hintColor: Colors.grey,
                              inputDecorationTheme: new InputDecorationTheme(
                                  labelStyle: new TextStyle(color: Colors.black)),
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.red,
                            ),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffFF0000)),
                                ),
                                labelText: 'Your Password',
                                hintText: 'Your Password',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),

                              autofocus: false,
                            )
                        )
                    ),

                    SizedBox(height: 15.0),

//                    new RaisedButton(
//                        onPressed: ,
//                        color: Color(0xffFF0000),
//                        child: Text('Login', style: TextStyle(fontSize: 20),),
//                    )
                    new RaisedButton(
                      color: Colors.red,
                      child: Text('Login'),
                      onPressed: () {
                        //createRecord();
                      },
                    ),
                  ],
                )

            ),


          )


      ),




    );
  }


}




