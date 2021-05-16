import 'package:flutter/material.dart';

import 'userquickview.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double _maxHeight = 300;
  double _progressHeight = 0;

  void _addLiter(){
    if(_progressHeight + 100 <= _maxHeight){
      setState(() {
        _progressHeight += 100;
      });
    }
  }
  void _addHalfLiter(){
    if(_progressHeight + 50 <= _maxHeight){
      setState(() {
        _progressHeight += 50;
      });
    }
  }
  void _addQuarterLiter(){
    if(_progressHeight + 25 <= _maxHeight){
      setState(() {
        _progressHeight += 25;
      });
    }
  }

  void _resetGoal(){
    setState(() {
      _progressHeight = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
          ),
          Row(
            children: [
              Container(
                width: width/2,
                child: Column(
                  children: [
                    Text(
                      "Goal: 3 liters",
                      softWrap: true,
                    ),
                    Container(
                      width: 50,
                      color: Colors.blueGrey[300],
                      height: _maxHeight - _progressHeight,
                    ),
                    Container(
                      width: 50,
                      color: Colors.lightBlue,
                      height: _progressHeight,
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: _addLiter,
                      child: Text("  Add 1 Liter  "),
                    ),
                    ElevatedButton(
                      onPressed: _addHalfLiter,
                      child: Text("Add 1/2 Liter"),
                      style: ButtonStyle(
                        alignment: Alignment.centerRight,
                      ),
                    ),ElevatedButton(
                      onPressed: _addQuarterLiter,
                      child: Text("Add 1/4 Liter"),
                    ),
                    ElevatedButton(
                      //style: ButtonStyle(minimumSize: Size(75,30)),
                      child: Text("Reset Count"),
                      onPressed: _resetGoal,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: width/15,
          ),
          Row(
            children: [
              Container(width: width/15),
              UserQuickView(width/2.5, "Kilby", 72.1),
              Container(width: width/15),
              UserQuickView(width/2.5, "Frankie", 31.7),
              Container(width: width/15),
            ],
          ),
          Container(
            height: width/15,
          ),
        ],
      ),
    );
  }
}