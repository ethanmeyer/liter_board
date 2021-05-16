import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> names = <String>["Alvin","Bart","Cassandra","Dixie","Elsie",
    "Frankie","Gusteau","Harold","Ichabod","Jacques","Kilby","Larth","Mickey",
    "Noel","Obie","Pippa","Quentin","Remy","Suzanne","Timothy","Uniqua","Valeria",
    "Whitney","Xenocrates","Yolanda","Zach"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 50,
            color: Colors.blueGrey[300],
            child: Center(child: Text("${names[index]}",),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}