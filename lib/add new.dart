import 'package:flutter/material.dart';
import 'package:query/main.dart';
import 'package:sqflite/sqflite.dart';

class Add_New extends StatefulWidget {

  @override
  State<Add_New> createState() => _Add_NewState();
}

class _Add_NewState extends State<Add_New> {
  TextEditingController Name=new TextEditingController();
  TextEditingController Phone=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextField(controller: Name,decoration: InputDecoration(
            labelText: 'Name' ,border: OutlineInputBorder()
        ),),
        SizedBox(height: 5,),

        TextField(controller: Phone,decoration: InputDecoration(
            labelText: 'Phone' ,border: OutlineInputBorder()
        ),),
        SizedBox(height: 5,),
        FlatButton(onPressed: () async {
          String a=Name.text.toString();
          String b=Phone.text.toString();
await mydb.insert("phonebook",<String,dynamic>
{
"name":a,
"phone":b,
},
    conflictAlgorithm:ConflictAlgorithm.replace,
);
}, child: Text('Save'))
      ],),
    );
  }
}