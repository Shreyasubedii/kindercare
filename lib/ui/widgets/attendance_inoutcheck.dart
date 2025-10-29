import 'package:flutter/material.dart';

class AttendanceInoutcheck extends StatelessWidget {
  // const AttendanceInoutcheck({super.key});
  final String label;
  final Color color;
  final VoidCallback onTap;

  const AttendanceInoutcheck({
    Key? key,
    required this.label,
    this.color = Colors.blue,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        // width: 100,
        // height: 45,
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(16),
          // border: Border.all(color: color, width: 1.5),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 6,
          //     offset: const Offset(0, 4),
          //   ),
        ),
        // alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

AttendanceInoutcheck inButton = AttendanceInoutcheck(
  label: 'IN',
  color: Colors.green,
  onTap: _noop,
);

AttendanceInoutcheck outButton = AttendanceInoutcheck(
  label: 'OUT',
  color: Colors.red,
  onTap: _noop,
);

void _noop() {}
