import 'package:flutter/material.dart';
import 'package:medcare/utils/card_tile.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 50,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              'Report',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 3, // Softness of the shadow
                          spreadRadius: 2, // Extent of the shadow
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today\'s Report',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildtodayReport(5, 'Total'),
                          _buildtodayReport(3, 'Taken'),
                          _buildtodayReport(1, 'Missed'),
                          _buildtodayReport(1, 'Snoozed'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Check Dashboard',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Here you will find everything related to your active and past medicines',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        size: 70,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Check Dashboard',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildHistoryDays('Sun', 1, Colors.blueAccent),
                      SizedBox(
                        width: 10,
                      ),
                      _buildHistoryDays('Mon', 2, Colors.blue.shade100),
                      SizedBox(
                        width: 10,
                      ),
                      _buildHistoryDays('Tue', 3, Colors.blue.shade100),
                      SizedBox(
                        width: 10,
                      ),
                      _buildHistoryDays('Wed', 4, Colors.blue.shade100),
                      SizedBox(
                        width: 10,
                      ),
                      _buildHistoryDays('Thu', 5, Colors.blue.shade100),
                      SizedBox(
                        width: 10,
                      ),
                      _buildHistoryDays('Fri', 6, Colors.blue.shade100),
                      SizedBox(
                        width: 10,
                      ),
                      _buildHistoryDays('Sat', 7, Colors.blue.shade100),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Morning 08:00 am',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                CardTile(
                  title: 'Calpol 500mg Tablet',
                  subtitle: 'After Food',
                  day: 01,
                  notificationIconColor: Colors.green,
                  icon: Icons.water_drop,
                  takenOrMissed: 'Taken',
                  iconColor: Colors.purple.shade100,
                  isCircleIcon: true,
                ),
                SizedBox(height: 10),
                CardTile(
                  title: 'Calpol 500mg Tablet',
                  subtitle: 'Before Breakfast',
                  day: 27,
                  notificationIconColor: Colors.red,
                  icon: Icons.medication,
                  takenOrMissed: 'Missed',
                  iconColor: Colors.blue.shade500,
                  isCircleIcon: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Afternoon 02:00 pm',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                CardTile(
                  title: 'Calpol 500mg Tablet',
                  subtitle: 'After Food',
                  day: 01,
                  notificationIconColor: Colors.orange,
                  icon: Icons.water_drop,
                  takenOrMissed: 'Snoozed',
                  iconColor: Colors.purple.shade100,
                  isCircleIcon: true,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}

Widget _buildtodayReport(int totalInt, String total) {
  return Column(
    children: [
      Text(
        '$totalInt',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
      Text(
        total,
        style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
      )
    ],
  );
}

Widget _buildHistoryDays(String day, int dayNum, Color color) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        day,
        style: TextStyle(
          color: Colors.grey.shade500,
          fontSize: 14,
        ),
      ),
      Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Center(
            child: Text(
          '$dayNum',
          style: TextStyle(color: Colors.white),
        )),
      )
    ],
  );
}
