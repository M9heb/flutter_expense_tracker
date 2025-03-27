import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category {
  food,
  family,
  travel,
  leisure,
  work,
  education,
}

const categoryIcons = {
  Category.food: Icons.dinner_dining,
  Category.family: Icons.people,
  Category.travel: Icons.airline_seat_recline_normal,
  Category.leisure: Icons.movie,
  Category.work: Icons.cases,
  Category.education: Icons.book,
};

class Expense {
  Expense({
    required this.amount,
    required this.title,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
