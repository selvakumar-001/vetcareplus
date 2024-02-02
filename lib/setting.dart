import "package:flutter/material.dart";
import 'package:vetcareplus/home.dart';

class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff07a467),
        title:Text("Settings"),
      ),
      body:SingleChildScrollView(
        // child:Center(child: ListTile(
        //     leading: Icon(Icons.home),
        //     title: Text(''),
        //     onTap: () => Navigator.push(
        //         context, MaterialPageRoute(builder: (_) => home())),
        //   ),
        // ),
      ),
    );
  }
}
