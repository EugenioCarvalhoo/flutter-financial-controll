import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'debt.dart';
import 'income.dart';

class User {
  int? idUser;
  String name;
  String email;
  String? photo;
  List<Debt>? debts;
  List<Income>? incomes;

  User({
    this.idUser,
    required this.name,
    required this.email,
    this.photo,
    this.debts,
    this.incomes,
  });
}
