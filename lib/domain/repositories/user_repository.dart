import 'package:financial_controll_flutter/Domain/Entities/user.dart';

abstract class UserRepository {
  User find(int id);

  save(User user);

  User update(User user);
}
