import 'package:flutter/material.dart';
import 'widgets/expense_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyExpenses = List.generate(5, (index) => {
      'title': 'Expense ${index + 1}',
      'amount': (20 * (index + 1)).toString(),
      'category': index % 2 == 0 ? 'Food' : 'Transport',
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Expense Tracker')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Add expense logic placeholder
        },
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: dummyExpenses.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final expense = dummyExpenses[index];
          return ExpenseCard(
            title: expense['title']!,
            amount: expense['amount']!,
            category: expense['category']!,
          );
        },
      ),
    );
  }
}
