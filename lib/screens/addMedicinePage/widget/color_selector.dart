import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({super.key});

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  final List<bool> isSelected = List.filled(7, false);
  final List<Color> colors = [
    Colors.pink.shade200,
    Colors.purple.shade200,
    Colors.red.shade200,
    Colors.green.shade200,
    Colors.orange.shade200,
    Colors.blue.shade200,
    Colors.yellow.shade200,
  ];

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
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: colors[index],
              border: Border.all(
                color: isSelected[index] ? Colors.blue : Colors.white,
                width: 1,
              ),
            ),
          ),
        );
      }),
    );
  }
}
