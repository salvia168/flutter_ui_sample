import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key, required this.title});

  final String title;

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Checkbox(
          value: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
          },
        ),
      ],
    );
  }
}
