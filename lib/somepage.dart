import 'package:flutter/material.dart';

class somePage extends StatelessWidget {
  const somePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 500, right: 30, bottom: 50),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0),
        ),
        //color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFAE6392).withOpacity(0.25),
            blurRadius: 5,
            spreadRadius: 3,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Text('compound'),
    );
  }
}
