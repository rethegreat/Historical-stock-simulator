import 'package:flutter/material.dart';
import 'package:hst/color.dart';

class Stats extends StatefulWidget {
  const Stats({Key? key, required this.name, required this.value})
      : super(key: key);

  final String name;
  final String value;

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Column(
        
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(widget.name, style: TextStyle(fontSize: 16),), Text(widget.value, style: TextStyle(fontSize: 16))],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              color: gray,
              width: double.infinity,
              height: 3,
            ),
          )
        ],
      ),
    );
  }
}
