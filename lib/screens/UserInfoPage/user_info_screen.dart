import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_rounded))
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          child: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 10,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Take Care!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Richa Bose',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    _buildTiles(
                      'Notifications',
                      'Check your medicine notificatio',
                      Icons.notifications_none_sharp,
                    ),
                    _buildTiles(
                      'Sound',
                      'Ring, Silent, Vibrate',
                      Icons.volume_up_outlined,
                    ),
                    _buildTiles(
                      'Manage Your Account',
                      'Password, Email Id, Phone Number',
                      Icons.person,
                    ),
                    _buildTiles(
                      'Notifications',
                      'Check your medicine notificatio',
                      Icons.notifications_none_sharp,
                    ),
                    _buildTiles(
                      'Notifications',
                      'Check your medicine notificatio',
                      Icons.notifications_none_sharp,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Device',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade50),
                      child: Column(
                        children: [
                          _buildTiles(
                            'Connect',
                            'Bluetooth, Wi-fi',
                            Icons.volume_up_outlined,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(
                              children: [
                                _buildTiles(
                                  'Sound Option',
                                  'Ring, Silent, Vibrate',
                                  Icons.volume_up_outlined,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Caretakers: 03',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Dipa Luna',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Roz Sold..',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Sunny We..',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  Icons.add_outlined,
                                  size: 20,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Add',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Doctor',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade50),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 30,
                            child: Icon(
                              Icons.add_outlined,
                              size: 30,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Add Your Doctor',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Or use ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              Text(
                                'invite link',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.orange),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Terms of use',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Rate Us',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.blue, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                        ),
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTiles(String title, String description, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
    child: Row(
      children: [
        Icon(
          icon,
          size: 35,
          color: Colors.grey.shade500,
          // weight: 100,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
