import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter course 1",
        amount: 2.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Flutter course 2",
        amount: 8,
        date: DateTime.now(),
        category: Category.travel)
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Expense Tracker"), actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ]),
        body: Column(
          children: [
            Expanded(child: ExpensesList(expenses: _registeredExpenses))
          ],
        ),
      ),
    );
  }
}
