import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewExpense extends StatefulWidget {
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
          TextField(
            maxLength: 96,
            decoration: InputDecoration(
              label: Text("Title"),
            ),
          )
        ],
      ),
    );
  }
}
