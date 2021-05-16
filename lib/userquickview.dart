import 'package:flutter/material.dart';

class UserQuickView extends StatelessWidget{
  double _length;
  double _progress;
  String _name;

  UserQuickView(this._length, this._name, this._progress);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.grey[300],
      width: _length,
      height: _length,
      child: Row(
        children: [
          Container(
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          Column(
            children: [
              Text(_name),
              Text("${_progress}%"),
            ],
          ),
        ],
      ),
    );
  }
}