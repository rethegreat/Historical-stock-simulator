import 'package:flutter/material.dart';
import 'package:hst/Widgets/news_articles.dart';
import 'package:hst/Widgets/stats.dart';
import 'package:hst/color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 50.0,
              top: MediaQuery.of(context).viewPadding.top + 10,
              bottom: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('AMZN', style: TextStyle(fontSize: 32)),
            const Text('109.29', style: TextStyle(fontSize: 48)),
            const Text('-1.36 (-1.31%)',
                style: TextStyle(fontSize: 32, color: Colors.red)),
            Text('Price at close',
                style: TextStyle(fontSize: 16, color: lightBlue))
          ]),
        ),
        SingleChildScrollView(
          child: TabBar(
            // isScrollable: true,
            tabs: const [
              Tab(text: 'Chart'),
              Tab(text: 'Statistics'),
              Tab(text: 'Financials'),
              Tab(text: 'News',)
            ],
            indicatorColor: darkBlue,
            labelColor: darkBlue,
            controller: controller,
          ),
        ),
        SizedBox(
          height: 360,
          width: double.infinity,
          child: TabBarView(controller: controller, children: [

            // Chart
            Container(
              color: Colors.red,
            ),

            // Statistics
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Text('Valuation Measures', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
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
                ],),
              )
            ),

            // Financials
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.yellow,
                    height: 500,
                  ),
                  Container(
                    color: Colors.green,
                    height: 500,
                  )
                ],
              ),
            ),

            // News
            Column(children: const [
              NewsArticle()
            ],)
          ]),
        ),
        Container(
          height: 210,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: gray),
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text('Duration - 30 days',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: darkBlue, borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text('Buy',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: darkBlue, borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text('Sell',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,),
                                
                      ),
                    ),
                  )
                ]),
          ),
        )
      ],
    ));
  }
}
