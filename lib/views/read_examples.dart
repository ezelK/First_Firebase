import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class ReadExamples extends StatefulWidget{
  @override
  _ReadExamplesState createState() => _ReadExamplesState();
  }
  class _ReadExamplesState extends State<ReadExamples>{
  String _displayText = 'Results go here';
  final _database = FirebaseDatabase.instance.reference();
  @override
  void initState(){
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _database.child('application/records/Weight').onValue.listen((event){
      final String weight = event.snapshot.value;
      setState(() {
        _displayText ='Total water weight is: $weight';
      });
  }
  );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Read Examples'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Text(_displayText),
            ],
          ),
        ),
      ),
    );
  }

}

