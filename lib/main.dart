import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CreateEvent.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>CreateEvent()
      },
    );
  }

}