import 'package:flutter/material.dart';

class CompartmentSelector extends StatefulWidget {
  const CompartmentSelector({super.key});

  @override
  State<CompartmentSelector> createState() => _CompartmentSelectorState();
}

class _CompartmentSelectorState extends State<CompartmentSelector> {
  final List<bool> isSelected = List.filled(7, false);

  @override
  void initState() {
    super.initState();
    isSelected[0] = true; // Set the first container as selected by default
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(7, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isSelected.fillRange(0, 7, false);
              isSelected[index] = true;
            });
          },
          child: Container(
            margin: EdgeInsets.only(right: 8),
            width: 55,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isSelected[index]
                  ? const Color.fromARGB(185, 203, 237, 241)
                  : Colors.white,
              border: Border.all(
                color: isSelected[index]
                    ? Colors.blue.shade500
                    : Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
