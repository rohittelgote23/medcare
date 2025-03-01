// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:medcare/screens/addMedicinePage/widget/color_selector.dart';
import 'package:medcare/screens/addMedicinePage/compartment_selector.dart';

class AddMedicine extends StatelessWidget {
  const AddMedicine({super.key});

  @override
  Widget build(BuildContext context) {
    // RangeValues _values = RangeValues(1, 100);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Add medicine',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.search, color: Colors.grey[600], size: 20),
                  suffixIcon:
                      Icon(Icons.mic, color: Colors.grey[600], size: 20),
                  hintText: 'Search Medicine Name',
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 1,
                      color: const Color.fromRGBO(231, 231, 231, 1),
                    ),
                  ),
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(255, 189, 188, 188),
                    ),
                  ),
                  hoverColor: Colors.transparent,
                  filled: true,
                  fillColor: Colors.white,
                ),
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(height: 20),
              _buildLabel('Compartment'),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CompartmentSelector(),
              ),
              SizedBox(height: 20),
              _buildLabel('Colour'),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ColorSelector(),
              ),
              SizedBox(
                height: 20,
              ),
              _buildLabel('Type'),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    _buildType('Tablet', Icons.medication),
                    SizedBox(
                      width: 30,
                    ),
                    _buildType('Capsule', Icons.medical_information),
                    SizedBox(
                      width: 30,
                    ),
                    _buildType('Cream', Icons.medical_services_rounded),
                    SizedBox(
                      width: 30,
                    ),
                    _buildType('Ors', Icons.medication_liquid_outlined),
                    SizedBox(
                      width: 30,
                    ),
                    _buildType('Injections', Icons.medication),
                    SizedBox(
                      width: 30,
                    ),
                    _buildType('Tablet', Icons.medication),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _buildLabel('Quantity'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Take 1/2 Pill',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      height: 50,
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildLabel('Total Count'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey.shade500,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '01',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2,
                  activeTrackColor: Colors.grey,
                  inactiveTrackColor: Colors.grey.shade300,
                  thumbColor: Colors.blue,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
                ),
                child: Slider(
                  value: 1,
                  min: 1,
                  max: 100,
                  // divisions: 99,
                  onChanged: (double newValues) {
                    // Handle change
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('01'),
                    Text('100'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _buildLabel('Set Date'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: _buildContainer('Today')),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: _buildContainer('End Date')),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _buildLabel('Frequency of Days'),
              SizedBox(
                height: 10,
              ),
              _buildContainer('Everyday'),
              SizedBox(
                height: 20,
              ),
              _buildLabel('How many times a Day'),
              SizedBox(
                height: 10,
              ),
              _buildContainer('Three Time'),
              SizedBox(
                height: 20,
              ),
              _buildDoseContainer(1),
              _buildDoseContainer(2),
              _buildDoseContainer(3),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: Text(
                        'Before Food',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: Text(
                        'Before Food',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: Text(
                        'Before Food',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Text(
      label,
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    );
  }
}

Widget _buildType(String type, IconData icon) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.pink.shade50,
        size: 50,
      ),
      Text(
        type,
        style: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 16,
        ),
      ),
    ],
  );
}

Widget _buildContainer(String name) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
        ),
      ],
    ),
  );
}

Widget _buildDoseContainer(int doseNumber) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey.shade400,
          width: 1,
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.watch_later_outlined,
              color: Colors.grey.shade300,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Dose $doseNumber',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
        ),
      ],
    ),
  );
}
