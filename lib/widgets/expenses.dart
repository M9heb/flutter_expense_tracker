import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.education),
    Expense(
        title: "Bullani",
        amount: 10.99,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: "Mortal Kombat",
        amount: 42,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(context) {
    return Scaffold(
        body: Column(
      children: [
        Text("Here should be the chart somehow!"),
        Expanded(
          child: ExpensesList(expenses: _registeredExpenses),
        ),
      ],
    ));
  }
}
