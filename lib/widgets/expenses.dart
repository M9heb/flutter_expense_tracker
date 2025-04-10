import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return NewExpense();
        });
  }

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expense Tracker"),
          actions: [
            IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add))
          ],
        ),
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
