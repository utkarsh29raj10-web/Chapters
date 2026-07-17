import 'package:path_provider/path_provider.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB("chapters_secure.db");
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getApplicationDocumentsDirectory();
    final path = join(dbPath.path, filePath);

    return await openDatabase(
      path,
      version: 1,
      password: 'chapters_dev_key',
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    const idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    const textType = "TEXT NOT NULL";
    const boolType = "BOOLEAN NOT NULL";
    const integerType = "INTEGER NOT NULL";
    const realType = "REAL NOT NUL";

    await db.execute('''
      CREATE TABLE Chapters (
        id $idType,
        name $textType,
        description $textType,
        created_at $textType,
      )
    ''');

    await db.execute('''
      CREATE TABLE Journals (
        id $idType,
        chapter_id $integerType,
        name $textType,
        is_locked $boolType,
        FOREIGN KEY (chapter_id) REFERENCES Chapters (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE Entries (
        id $idType,
        journal_id $integerType,
        content $textType,
        date $textType,
        is_locked $boolType,
        FOREIGN KEY (journal_id) REFERENCES Journals (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE Nodes (
        id $idType,
        entry_id $integerType,
        x $realType,
        y $realType,
        FOREIGN KEY (entry_id) REFERENCES Entires (id) ON DELETE CASCADE
      )
    ''');
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}