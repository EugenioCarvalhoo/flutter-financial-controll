import 'category.dart';

class Debt {
  int? idDebt;
  String typeGasto;
  String value;
  String status;
  Category category;
  String descript;
  DateTime dateEntry;
  DateTime dueDate;

  Debt({
    this.idDebt,
    required this.typeGasto,
    required this.value,
    required this.status,
    required this.category,
    required this.descript,
    required this.dateEntry,
    required this.dueDate,
  });
}
