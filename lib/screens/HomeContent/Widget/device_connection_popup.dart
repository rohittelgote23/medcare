import 'package:flutter/material.dart';

class DeviceConnectionPopup extends StatelessWidget {
  final VoidCallback onBluetoothPressed;
  final VoidCallback onWiFiPressed;

  const DeviceConnectionPopup({
    super.key,
    required this.onBluetoothPressed,
    required this.onWiFiPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      contentPadding: EdgeInsets.all(0),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 35, bottom: 20),
            child: Column(
              children: [
                Text(
                  'Your Device is not connected',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.pink.shade200,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.android,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Connect your device with',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(15)),
                  ),
                  child: IconButton(
                    onPressed: onBluetoothPressed,
                    icon: Icon(
                      Icons.bluetooth,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 1,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15)),
                  ),
                  child: IconButton(
                    onPressed: onWiFiPressed,
                    icon: Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
