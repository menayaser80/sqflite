import 'package:flutter/material.dart';
import 'package:query/add%20new.dart';

import 'delete.dart';
import 'edit.dart';
import 'view all.dart';
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_New()));
        }, child: Text('add new')),
        SizedBox(height: 5,),
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>View_All()));
        }, child: Text('View all')),
        SizedBox(height: 5,),
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit()));
        }, child: Text('Edit')),
        SizedBox(height: 5,),
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Delete()));
        }, child: Text('Delete'))

      ],),
    );
  }
}