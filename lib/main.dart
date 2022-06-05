import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'views/read_examples.dart';
void main() {
  runApp(MyHomePage(title: 'TITLE'));
}

// class MyHomePage extends StatefulWidget{
//   MyHomePage({ Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
//   }
//   class _MyHomePageState extends State<MyHomePage>{
//   int _counter = 0;
//
//   void _incrementCounter(){
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     throw UnimplementedError();
//   }
//
// }
class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({ Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Check examples!"),
            SizedBox(
              height: 6,
              width: MediaQuery.of(context).size.width,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReadExamples(),
                    )
                  );
                },
                child: Text("Read Examples"),
            ),
        ],
      ),
      ),
    );
  }
}

