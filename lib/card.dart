import 'package:flutter/material.dart';

class Card_view extends StatelessWidget {
  String name,phone;
  Card_view(this.name,this.phone);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        SizedBox(width: 20,),
        Text(phone)
      ],
    );
  }
}