import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerScreen extends StatefulWidget {
  final Function(DateTime)?
      onDateSelected; // Callback to pass the selected date

  const DatePickerScreen({super.key, this.onDateSelected});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime _currentDate = DateTime.now();

  void _previousDay() {
    setState(() {
      _currentDate = _currentDate.subtract(Duration(days: 1));
      if (widget.onDateSelected != null) {
        widget.onDateSelected!(_currentDate);
      }
    });
  }

  void _nextDay() {
    setState(() {
      _currentDate = _currentDate.add(Duration(days: 1));
      if (widget.onDateSelected != null) {
        widget.onDateSelected!(_currentDate);
      }
    });
  }

  String _getDayName(DateTime date) {
    return DateFormat('EEE').format(date);
  }

  String _getFormattedDate(DateTime date) {
    return '${_getDayName(date)}, ${DateFormat('MMM').format(date)} ${date.day}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _getDayName(_currentDate.subtract(Duration(days: 1))),
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16.0,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.blue,
                  size: 20,
                ),
                onPressed: _previousDay,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF21383E),
            ),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              _getFormattedDate(_currentDate),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.blue,
                  size: 20,
                ),
                onPressed: _nextDay,
              ),
              Text(
                _getDayName(_currentDate.add(Duration(days: 1))),
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
