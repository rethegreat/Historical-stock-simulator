import 'package:flutter/material.dart';
import 'package:hst/Widgets/stats.dart';

class Financials extends StatefulWidget {
  const Financials({Key? key}) : super(key: key);

  @override
  State<Financials> createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Text(
              'Breakdown (all numbers in thousands)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Stats(
            name: 'Total Revenue',
            value: '280,522,000',
          ),
          Stats(
            name: 'Cost of Revenue',
            value: '205,768,000',
          ),
          Stats(
            name: 'Gross Profit',
            value: '74,754,000',
          ),
          Stats(
            name: 'Total Operating Expenses',
            value: '60,213,000',
          ),
          Stats(
            name: 'Net Income',
            value: '11,588,000',
          ),
          
        ],
      ),
    ));
  }
}