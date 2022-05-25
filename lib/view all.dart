import 'package:flutter/material.dart';
import 'package:query/card.dart';
import 'package:query/main.dart';

class View_All extends StatefulWidget {

  @override
  State<View_All> createState() => _View_AllState();
}

class _View_AllState extends State<View_All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future:mydb.query('phonebook'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.hasData==false){
            return Text("no data");
          }
          else
          {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder:(context, index)
                {
                  return Card_view(snapshot.data[index]['name'], snapshot.data[index]['phone']);
                }
            );
          }},
      ),


    );
  }
}