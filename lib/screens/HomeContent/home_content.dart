import 'package:flutter/material.dart';
import 'package:medcare/utils/card_tile.dart';
import 'package:medcare/screens/HomeContent/Widget/datepicker.dart';
import 'package:medcare/screens/HomeContent/Widget/device_connection_popup.dart';
import 'dart:async';

import 'package:medcare/screens/UserInfoPage/user_info_screen.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  DateTime? _selectedDate = DateTime.now();
  bool _showPopup = false;

  @override
  void initState() {
    super.initState();
    // Show popup after 5 seconds
    Timer(Duration(seconds: 5), () {
      if (mounted) {
        setState(() {
          _showPopup = true;
        });
      }
    });
  }

  void _hidePopup() {
    setState(() {
      _showPopup = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();
    bool isTodaySelected = _selectedDate != null &&
        _selectedDate!.year == today.year &&
        _selectedDate!.month == today.month &&
        _selectedDate!.day == today.day;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Hi Harry!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 3),
              Text(
                '5 medicines left',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.medical_services,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserInfoScreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                DatePickerScreen(
                  onDateSelected: (DateTime date) {
                    setState(() {
                      _selectedDate = date;
                    });
                  },
                ),
                Expanded(
                  child: isTodaySelected
                      ? SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Morning 08:00 am',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              CardTile(
                                title: 'Calpol 500mg Tablet',
                                subtitle: 'Before breakfast',
                                day: 01,
                                notificationIconColor: Colors.green,
                                icon: Icons.water_drop,
                                takenOrMissed: 'Taken',
                                iconColor: Colors.pink.shade100,
                                isCircleIcon: false,
                              ),
                              SizedBox(height: 10),
                              CardTile(
                                title: 'Calpol 500mg Tablet',
                                subtitle: 'Before breakfast',
                                day: 27,
                                notificationIconColor: Colors.red,
                                icon: Icons.medication_rounded,
                                takenOrMissed: 'Missed',
                                iconColor: Colors.blueAccent.shade100,
                                isCircleIcon: true,
                              ),
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Afternoon 02:00 pm',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
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
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Night 09:00 pm',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10),
                              CardTile(
                                title: 'Calpol 500mg Tablet',
                                subtitle: 'Before Sleep',
                                day: 03,
                                notificationIconColor: Colors.grey,
                                icon: Icons.water_drop,
                                takenOrMissed: 'Left',
                                iconColor: Colors.red.shade100,
                                isCircleIcon: false,
                              ),
                              SizedBox(height: 10),
                              CardTile(
                                title: 'Calpol 500mg Tablet',
                                subtitle: 'Before Sleep',
                                day: 03,
                                notificationIconColor: Colors.orange,
                                icon: Icons.medical_services_rounded,
                                takenOrMissed: 'Snoozed',
                                iconColor: Colors.purple.shade100,
                                isCircleIcon: false,
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        )
                      : Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/emptybox.png'),
                              Text(
                                'Nothing is Here. Add a Medicine',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
          if (_showPopup)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: DeviceConnectionPopup(
                  onBluetoothPressed: () {
                    _hidePopup();
                    // Bluetooth connection logic
                  },
                  onWiFiPressed: () {
                    _hidePopup();
                    // Wifi connection logic
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
