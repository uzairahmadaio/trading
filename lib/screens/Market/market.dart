import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tradingapp/screens/theme/theme.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    final Random random = Random();

    final List<ChartModel> sampleChartData = List.generate(30, (index) {
      double open =
          30 + random.nextDouble() * 20; // Open price between 30 and 50
      double close = open +
          (random.nextDouble() * 20 -
              10); // Close price can fluctuate by +/- 10
      double low = min(close, open) - (random.nextDouble() * 10); // Low price
      double high = max(close, open) + (random.nextDouble() * 10); // High price
      List<String> text = ['D', 'W', 'M', '3M', '6M', 'Y'];
      List<bool> textBool = [false, false, true, false, false, false];

      int days = 30;

      setDays(String txt) {
        if (txt == 'D') {
          setState(() {
            days = 1;
          });
        } else if (txt == 'W') {
          setState(() {
            days = 7;
          });
        } else if (txt == 'M') {
          setState(() {
            days = 30;
          });
        } else if (txt == '3M') {
          setState(() {
            days = 90;
          });
        } else if (txt == '6M') {
          setState(() {
            days = 180;
          });
        } else if (txt == 'Y') {
          setState(() {
            days = 365;
          });
        }
      }

      return ChartModel(
        time: index + 1,
        open: open,
        high: high,
        low: low,
        close: close,
      );
    });
    List<String> text = ['Max', '1h', '6h', '12H', '1M', '6M', '1Y'];
    List<bool> textBool = [false, false, true, false, false, false, false];

    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF051718),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 226, 226, 226).withOpacity(0.1),
                  spreadRadius: 9,
                  blurRadius: 200,
                )
              ]),
            ),
          ),
          SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            Divider(
                              color: Color(0xFF374F60),
                              thickness: 0.5,
                            ),
                            Row(
                              children: [
                                // Container(
                                //   width: 35,
                                //   height: 35,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(10),
                                //     border: Border(
                                //       left: BorderSide(
                                //         color: Colors.grey, // Border color
                                //         width: 0.5, // Border width
                                //       ),
                                //       right: BorderSide(
                                //         color: Colors.grey, // Border color
                                //         width: 1.0, // Border width
                                //       ),
                                //     ),
                                //     color: Color.fromARGB(255, 41, 76, 78),
                                //   ),
                                //   child: Icon(Icons.arrow_back,
                                //       color: Colors.white),
                                // ),
                                SizedBox(
                                  width: 80,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/us.png',
                                        height: 24), // Add your flag assets
                                    SizedBox(width: 8),
                                    Text(
                                      "USD",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(Icons.compare_arrows,
                                        color: Colors.white),
                                    SizedBox(width: 4),
                                    Text(
                                      "JPY",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 8),
                                    Image.asset('assets/us.png', height: 24),
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.share_outlined,
                                        color: Colors.white),
                                    Icon(Icons.star, color: Colors.yellow),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xFF374F60),
                              thickness: 0.5,
                            )
                          ],
                        ),

                        FittedBox(
                          fit: BoxFit.cover,
                          child: Container(
                            height: myHeight * 0.25,
                            child: SfCartesianChart(
                              trackballBehavior:
                                  TrackballBehavior(enable: true),
                              // zoomPanBehavior: ZoomPanBehavior(
                              //     enablePinching: true, zoomMode: ZoomMode.x),
                              plotAreaBorderWidth:
                                  0, // Removes border around the chart area
                              borderWidth:
                                  0, // Removes the outer border of the chart

                              primaryXAxis: CategoryAxis(
                                axisLine: AxisLine(
                                    width: 0), // Removes the X-axis line
                                majorGridLines: MajorGridLines(
                                    width: 0), // Removes vertical grid lines
                                labelStyle: TextStyle(
                                    color: Colors
                                        .transparent), // Hides X-axis numbers
                                majorTickLines: MajorTickLines(
                                    size:
                                        0), // Removes X-axis tick lines (markers)
                                minimum: 0, // Adjust if needed
                                maximum: 30, // Adjust to match your data range
                                labelIntersectAction: AxisLabelIntersectAction
                                    .hide, // Hides overlapping labels
                              ),
                              primaryYAxis: NumericAxis(
                                maximumLabels: 2,
                                axisLine: AxisLine(
                                    width: 0), // Removes the Y-axis line
                                majorGridLines: MajorGridLines(
                                    width:
                                        0.1), // Removes horizontal grid lines
                                minorGridLines: MinorGridLines(
                                    width:
                                        0), // Removes horizontal minor grid lines
                                labelStyle: TextStyle(
                                    color: Colors
                                        .transparent), // Hides Y-axis numbers
                                majorTickLines: MajorTickLines(
                                    size:
                                        0), // Removes Y-axis tick lines (markers)
                              ),
                              series: <CandleSeries>[
                                CandleSeries<ChartModel, int>(
                                  enableSolidCandles: true,
                                  enableTooltip: true,
                                  bullColor: Colors.green,
                                  bearColor: Colors.red,
                                  dataSource: sampleChartData,
                                  xValueMapper: (ChartModel sales, _) =>
                                      sales.time,
                                  lowValueMapper: (ChartModel sales, _) =>
                                      sales.low,
                                  highValueMapper: (ChartModel sales, _) =>
                                      sales.high,
                                  openValueMapper: (ChartModel sales, _) =>
                                      sales.open,
                                  closeValueMapper: (ChartModel sales, _) =>
                                      sales.close,
                                  animationDuration: 20,
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 30,
                          width: double.infinity,
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: textBool[0] == true
                                        ? [Colors.white, Colors.black38]
                                        : [
                                            Colors.transparent,
                                            Colors.transparent
                                          ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    text[0],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: textBool[1] == true
                                        ? [Colors.white, Colors.black38]
                                        : [
                                            Colors.transparent,
                                            Colors.transparent
                                          ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    text[1],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: textBool[2] == true
                                        ? [Colors.white, Colors.black38]
                                        : [
                                            Colors.transparent,
                                            Colors.transparent
                                          ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    text[2],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: textBool[3] == true
                                        ? [Colors.white, Colors.black38]
                                        : [
                                            Colors.transparent,
                                            Colors.transparent
                                          ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    text[3],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: textBool[4] == true
                                        ? [Colors.white, Colors.black38]
                                        : [
                                            Colors.transparent,
                                            Colors.transparent
                                          ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    text[4],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: textBool[5] == true
                                        ? [Colors.white, Colors.black38]
                                        : [
                                            Colors.transparent,
                                            Colors.transparent
                                          ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    text[5],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: textBool[6] == true
                                        ? [Colors.white, Colors.black38]
                                        : [
                                            Colors.transparent,
                                            Colors.transparent
                                          ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    text[6],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white38),
                              ),
                              Image.asset(
                                'assets/arrow.png',
                                scale: 6,
                              ),
                              Image.asset('assets/grid.png'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Container(
                        //   color: Colors.black,
                        //   height: 30,
                        //   width: double.infinity,
                        //   child: ListView.builder(
                        //     shrinkWrap: true,
                        //     scrollDirection: Axis.horizontal,
                        //     itemCount: text.length,
                        //     itemBuilder: (context, index) {
                        //       return Padding(
                        //         padding: EdgeInsets.only(right: 18),
                        //         child: GestureDetector(
                        //           onTap: () {
                        //             setState(() {
                        //               textBool = [
                        //                 false,
                        //                 false,
                        //                 false,
                        //                 false,
                        //                 false,
                        //                 false
                        //               ];
                        //               textBool[index] = true;
                        //             });
                        //             setDays(text[index]);
                        //           },
                        //           child: Container(
                        //             width: 30,
                        //             height: 15,
                        //             decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(8),
                        //               gradient: LinearGradient(
                        //                 colors: textBool[index] == true
                        //                     ? [Colors.white, Colors.black38]
                        //                     : [
                        //                         Colors.transparent,
                        //                         Colors.transparent
                        //                       ],
                        //                 begin: Alignment.topLeft,
                        //                 end: Alignment.bottomRight,
                        //               ),
                        //             ),
                        //             child: Center(
                        //               child: Text(
                        //                 text[index],
                        //                 style: TextStyle(
                        //                     fontSize: 15, color: Colors.white),
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // ),
                        Container(
                          height: 145,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Stats (Today)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 12),
                              _buildStatRow(
                                  "Open", "35632.12", "High", "35621.90"),
                              _buildStatRow(
                                  "Close", "33432.42", "Low", "33421.30"),
                              _buildStatRow("Daily Vol", "2.321K", "Market Cap",
                                  "1.324M"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '09:00 AM',
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  '20% Sell',
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Current Trend',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '+12.5% (24h)',
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 16),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '02:00 PM',
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  '60% Buy',
                                  style: TextStyle(color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 3,
                              width: 50,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 3,
                              width: 250,
                              color: Colors.greenAccent,
                            ),
                          ],
                        ),
                        // Buy/Sell Buttons
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white
                                            .withOpacity(0.2), // Shadow color
                                        spreadRadius: 2, // Spread radius
                                        blurRadius: 5, // Blur radius
                                        offset: Offset(0,
                                            2), // Shadow position: x(horizontal), y(vertical)
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red),
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: Center(
                                  child: Text(
                                    'SELL 140.23',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                              SizedBox(width: 10),
                              Expanded(
                                  child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white
                                          .withOpacity(0.2), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(0,
                                          2), // Shadow position: x(horizontal), y(vertical)
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: Center(
                                  child: Text(
                                    'BUY 140.23',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        )
                      ])))
        ],
      ),
    );
  }
}

class ChartModel {
  int time;
  double? open;
  double? high;
  double? low;
  double? close;

  ChartModel({required this.time, this.open, this.high, this.low, this.close});
}

Widget _buildStatRow(
    String leftTitle, String leftValue, String rightTitle, String rightValue) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStatColumn(leftTitle, leftValue),
        _buildStatColumn(rightTitle, rightValue),
      ],
    ),
  );
}

Widget _buildStatColumn(String title, String value) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(color: Colors.grey[400]),
      ),
      SizedBox(height: 4),
      SizedBox(
        width: 10,
      ),
      Text(
        value,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
