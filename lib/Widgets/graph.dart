import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  late List<StockData> _chartData;

  

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: 'Stock Price'),
      series: <ChartSeries>[
        LineSeries<StockData, double>(
            name: 'Stock price',
            dataSource: _chartData,
            xValueMapper: (StockData sales, _) => sales.hour,
            yValueMapper: (StockData sales, _) => sales.price,
            
            enableTooltip: true)
      ],
      primaryXAxis: NumericAxis(
        title: AxisTitle(text: '24h clock'),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      primaryYAxis: NumericAxis(
          labelFormat: '{value}',
          numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
    );
  }
}

 List<StockData> getChartData() {
    final List<StockData> chartData = [
      StockData(0930, 100),
      StockData(1030, 101),
      StockData(1130, 104),
      StockData(1230, 102),
      StockData(1330, 109),
      StockData(1430, 110),
      StockData(1530, 120),
      StockData(1600, 111),
    ];
    return chartData;
  }


class StockData {
  StockData(this.hour, this.price);
  final double hour;
  final double price;
}