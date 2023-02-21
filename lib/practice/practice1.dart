

import 'package:flutter/material.dart';

class Prac1 extends StatelessWidget {
  const Prac1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: prac11(),
    );
  }
}

class prac11 extends StatefulWidget {
  const prac11({Key? key}) : super(key: key);

  @override
  State<prac11> createState() => _prac11State();
}

class _prac11State extends State<prac11> {
  double _opacity=1;
  double _width=200;
  double _margin=0;
  Color _colorr=Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        height: 200,
        duration: Duration(seconds: 1),
        margin: EdgeInsets.fromLTRB(_margin,200,_margin,200),
        width: _width,
        color: _colorr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("animate margin",style: TextStyle(color: Colors.black)),
                onPressed: () => setState(()=>_margin=550)
            ),
            Expanded(child: Divider()),
            ElevatedButton(
              child: Text("animate color",style: TextStyle(color: Colors.black),),
                onPressed: () => setState(()=>_colorr=Colors.redAccent)
            ),
          ],
        ),

      ),
    );
  }
}
