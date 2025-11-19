import 'package:flutter/material.dart';

class StatusCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Color color;

  const StatusCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          activeColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          onChanged: onChanged,
        ),
        Text(label),
      ],
    );
  }
}
