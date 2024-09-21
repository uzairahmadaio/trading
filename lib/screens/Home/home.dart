import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingapp/screens/Portfolio/portfolio.dart';
import 'package:tradingapp/screens/theme/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hala',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        Text('Louis Rosenfeld',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/men.png')),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width - 25,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 0.3),
                    color: Color(0xff5E687),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, top: 15),
                      hintText: 'Search Here',
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Colors.grey,
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 212, 211, 211)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width - 25,
                  height: 80,
                  padding: EdgeInsets.all(8), // Similar to card padding
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(
                        15), // Card's default border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.mail_outline, color: Colors.white),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Verify your email address',
                              style: TextStyle(color: Colors.white)),
                          Text('Your email verification is pending',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            left: BorderSide(
                              color: Colors.grey, // Border color
                              width: 0.5, // Border width
                            ),
                            right: BorderSide(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          color: Color.fromARGB(255, 41, 76, 78),
                        ),
                        child: Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Portfolio Section
                GestureDetector(
                  onTap: () {
                    Get.to(Portfolio());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Portfolio',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PortfolioTile(
                        title: 'USDJPY',
                        subtitle: 'Euro / U.S. Dollar',
                        value: '139.3550',
                        change: '+0.0025 (+0.3661%)',
                        isPositive: true,
                      ),
                      PortfolioTile(
                        title: 'Boe',
                        subtitle: 'Boeing Co',
                        value: '139.3550',
                        change: '-0.80 (-0.37%)',
                        isPositive: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Watchlist Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Watchlist',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    Text(
                      'Edit Watchlist',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Portfolio();
                  },
                  child: WatchlistTile(
                    title: 'EURUSD',
                    subtitle: 'Euro / U.S. Dollar',
                    value: '1.0749',
                    change: '-0.0037 (-0.3440%)',
                    isPositive: false,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                WatchlistTile(
                  title: 'Tesla',
                  subtitle: 'Tesla.',
                  value: '139.3550',
                  change: '-0.0037 (-0.3440%)',
                  isPositive: true,
                ),
                SizedBox(
                  height: 10,
                ),
                WatchlistTile(
                  title: 'USDJPY',
                  subtitle: 'Euro / U.S. Dollar',
                  value: '139.3550',
                  change: '-0.0037 (-0.3440%)',
                  isPositive: false,
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class PortfolioTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String value;
  final String change;
  final bool isPositive;

  const PortfolioTile({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.change,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 130,
        width: MediaQuery.sizeOf(context).width * 0.5,
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/us.png',
                  scale: 4,
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(color: Colors.white)),
                    Text(subtitle,
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      change,
                      style: TextStyle(
                          color: isPositive ? Colors.green : Colors.red),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      isPositive ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: isPositive ? Colors.green : Colors.red,
                      size: 13,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(value,
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(
                      height: 20,
                      width: 50,
                      child: LineChartSample(
                        spotColor: isPositive ? Colors.greenAccent : Colors.red,
                        spots: [
                          FlSpot(0, 1),
                          FlSpot(1, 2),
                          FlSpot(2, 1.5),
                          FlSpot(3, 3),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WatchlistTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String value;
  final String change;
  final bool isPositive;

  const WatchlistTile({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.change,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.grey, // Border color
            width: 0.2, // Border width
          ),
          right: BorderSide(
            color: Colors.grey, // Border color
            width: 0.2, // Border width
          ),
        ),
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/us.png',
                scale: 4,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(color: Colors.white)),
                  Text(subtitle,
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(value, style: TextStyle(color: Colors.white, fontSize: 18)),
              Row(
                children: [
                  Text(
                    change,
                    style: TextStyle(
                        color: isPositive ? Colors.green : Colors.red),
                  ),
                  Icon(
                    isPositive ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: isPositive ? Colors.green : Colors.red,
                    size: 15,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LineChartSample extends StatelessWidget {
  final List<FlSpot> spots;
  final Color spotColor;

  LineChartSample({Key? key, required this.spots, required this.spotColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(show: false), // To hide grid lines
        titlesData: FlTitlesData(show: false), // To hide axis titles
        borderData: FlBorderData(show: false), // To hide borders
        lineTouchData: LineTouchData(enabled: false),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true, // To make the line smooth
            color: spotColor,
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
