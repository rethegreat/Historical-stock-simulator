import 'package:flutter/material.dart';
import 'package:hst/Widgets/stats.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

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
              'Valuation Measures',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Stats(
            name: 'Market Cap',
            value: '1.5T',
          ),
          Stats(
            name: 'Enterprise Value',
            value: '1.53T',
          ),
          Stats(
            name: 'Trailing P/E',
            value: '71.18',
          ),
          Stats(
            name: 'Forward P/E ',
            value: '45.02',
          ),
          Stats(
            name: 'PEG Ratio (5 yr expected)',
            value: '1.71',
          ),
          Stats(
            name: 'Price/Sales (ttm)',
            value: '3.88',
          ),
          Stats(
            name: 'Price/Book (mrq)',
            value: '16.03',
          ),
          Stats(
            name: 'Enterprise Value/Revenue ',
            value: '3.96',
          ),
          Stats(
            name: 'Enterprise Value/EBITDA ',
            value: '31.78',
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Text(
              'Share Statistics',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Stats(
            name: 'Avg Vol (3 month)',
            value: '3.67M',
          ),
          Stats(
            name: 'Avg Vol (10 day)',
            value: '3.66M',
          ),
          Stats(
            name: 'Shares Outstanding',
            value: '10.06B',
          ),
          Stats(
            name: 'Float',
            value: '429.63M',
          ),
          Stats(
            name: 'PEG Ratio (5 yr expected)',
            value: '1.71',
          ),
          Stats(
            name: '% Held by Insiders',
            value: '14.56',
          ),
          Stats(
            name: '% Held by Institutions',
            value: '58.66%',
          ),
        ],
      ),
    ));
  }
}
