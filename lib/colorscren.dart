import'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screencolorchange/color_provider.dart';

class ColorscreenDemo extends StatefulWidget{
  @override
  State<ColorscreenDemo> createState()=> _ColorscreenDemoState();
}

class _ColorscreenDemoState extends State<ColorscreenDemo>{
 

  @override
  Widget build(BuildContext context){
     final colorprovider=Provider.of<ColorProvider>(context);
    return Scaffold(
      backgroundColor: colorprovider.bgcolor,
      appBar: AppBar(
        title: Text("Color change with provider"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [GestureDetector(
            onTap: colorprovider.changeColor,
            child: Text("Tap me change color"))],
        ),
      )
    );
  }
}