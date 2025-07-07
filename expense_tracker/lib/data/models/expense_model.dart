import '../../domain/entities/expense.dart';

class ExpenseModel extends Expense {
  ExpenseModel({
    required String title,
    required double amount,
    required DateTime date,
  }) : super(title: title, amount: amount, date: date);
}
