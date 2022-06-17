import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hst/Screens/home_screen.dart';
import 'package:hst/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: linen,
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).viewPadding.top + 20,
            left: 50.0,
            bottom: 50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 120.0),
                child: Text(
                  'Historical Stock Trader',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                color: darkBlue,
                height: 85,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Can you make the right decision regarding a stock based on its news and earnings report at that time period',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: SvgPicture.asset(
                  'assets/stock_graph.svg',
                  height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: blue, borderRadius: BorderRadius.circular(10)),
                    height: 70,
                    width: double.infinity,
                    child: const Center(
                        child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
