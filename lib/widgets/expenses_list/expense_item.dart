import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(expense.title),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text(expense.amount.toStringAsFixed(2)),
              const Spacer(),
              Row(
                children: [
                  const Icon(Icons.alarm_add),
                  const SizedBox(width: 10,),
                  Text(expense.date.toString())
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}