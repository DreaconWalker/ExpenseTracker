import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  final String title;
  final String amount;
  final String category;

  const ExpenseCard({
    super.key,
    required this.title,
    required this.amount,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: ListTile(
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        subtitle: Text(category),
        trailing: Text('\$ $amount', style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
