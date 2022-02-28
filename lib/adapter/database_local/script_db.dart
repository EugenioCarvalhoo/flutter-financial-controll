class ScriptDb {
  static const dbName = 'financial_controll.db';

  static const activeFOREIGN = "PRAGMA foreign_keys=ON;";

  static const user = '''
CREATE TABLE TB_USER(
  id_user INTEGER NOT NULL PRIMARY KEY
  ,name VARCHAR(200) NOT NULL
  ,emial VARCHAR(150) NOT NULL
  ,photo VARCHAR(300) NOT NULL
) 
''';

  static const debt = '''
CREATE TABLE TB_DEBT(
  id_debt INTEGER NOT NULL PRIMARY KEY
  ,id_category INTEGER
  ,FOREIGN KEY(id_category) REFERENCES TB_CATEGORY(id_category)
  ,FOREIGN KEY(id_user) REFERENCES TB_USER(id_user)
  ,type_gasto VARCHAR(100)
  ,value VARCHAR(300)
  ,status VARCHAR(50)
  ,description VARCHAR(300)
  ,data_entry VARCHAR(50)
  due_date VARCHAR(50)
)
''';

  static const category = '''
CREATE TABLE TB_CATEGORY(
  id_category INTEGER NOT NULL PRIMARY KEY
  ,name VARCHAR(50)
)
''';

  static const income = '''
CREATE TABLE TB_INCOME(
  id_income INTEGER NOT NULL PRIMARY KEY
  ,FOREIGN KEY(id_user) REFERENCES TB_USER(id_user)
  ,description VARCHAR(300)
  ,value VARCHAR(300)
  ,data_entry VARCHAR(50)
)
''';
}
