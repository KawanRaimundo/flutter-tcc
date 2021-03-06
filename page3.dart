import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
        hintColor: Color.fromARGB(255, 255, 252, 252),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Container(
            width: 360,
            height: 147,
            child: Image.asset('images/logo.jpeg'),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: 'Você já é investidor?',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(97, 0, 97, 1), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                hintText: 'Você está endividado?',
                hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(97, 0, 97, 1), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                hintText:
                    'Você se considera uma pessoa controlada financeiramente?',
                hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [
              Expanded(
                child: ElevatedButton(
                  child: const Text('Proxima Etapa'),
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(97, 0, 97, 1)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.all(16.00)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 16))),
                ),
              ),
            ]),
          ),
        ]));
  }
}
