import 'package:flutter/material.dart';

class DateDialogBox extends StatelessWidget {
  const DateDialogBox({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Future<DateTime?> _selectDate(BuildContext context) {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
