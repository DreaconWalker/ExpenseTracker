import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/expense.dart';

class ExpenseCubit extends Cubit<List<Expense>> {
  ExpenseCubit() : super([]);

  void addExpense(Expense expense) {
    final updatedList = List<Expense>.from(state)..add(expense);
    emit(updatedList);
  }

  void removeExpense(Expense expense) {
    final updatedList = List<Expense>.from(state)..remove(expense);
    emit(updatedList);
  }
}
