import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(child: Text("Ask Me Anything",style: TextStyle(color: Colors.white,fontSize: 20),)),
        ),
        body: MagicPage(),
      ),
    );
  }
}
class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
int magicPic=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(onPressed: (){
            setState(() {
              magicPic=Random().nextInt(5)+1;
            });
          }, child: Image.asset('images/ball$magicPic.png'),),),
        ],
      ),
    );
  }
}

