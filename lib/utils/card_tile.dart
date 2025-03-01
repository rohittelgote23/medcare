import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardTile extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;
  int day;
  Color notificationIconColor;
  String takenOrMissed;
  Color iconColor;
  bool isCircleIcon;

  CardTile({
    super.key,
    required this.day,
    required this.notificationIconColor,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.takenOrMissed,
    required this.iconColor,
    required this.isCircleIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(185, 203, 237, 241),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.circular(isCircleIcon ? 50 : 8),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Day $day',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.notifications_none_sharp,
                  color: notificationIconColor,
                ),
                Text(
                  takenOrMissed,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
