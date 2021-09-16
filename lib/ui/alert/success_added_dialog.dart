import 'package:flutter/material.dart';

void successAddedDialog(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check_circle_outline_outlined, color: Color(0xff7367F0)),
            SizedBox(height: 16),
            Text(
              "Task Added!",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff7367F0),
              ),
            ),
          ],
        ),
      ),
    );
