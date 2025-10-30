// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  HeroDao? _heroDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `HeroDatabaseEntity` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `slug` TEXT NOT NULL, `intelligence` INTEGER NOT NULL, `strength` INTEGER NOT NULL, `speed` INTEGER NOT NULL, `durability` INTEGER NOT NULL, `power` INTEGER NOT NULL, `combat` INTEGER NOT NULL, `imageXs` TEXT NOT NULL, `imageSm` TEXT NOT NULL, `imageMd` TEXT NOT NULL, `imageLg` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  HeroDao get heroDao {
    return _heroDaoInstance ??= _$HeroDao(database, changeListener);
  }
}

class _$HeroDao extends HeroDao {
  _$HeroDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _heroDatabaseEntityInsertionAdapter = InsertionAdapter(
            database,
            'HeroDatabaseEntity',
            (HeroDatabaseEntity item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'slug': item.slug,
                  'intelligence': item.intelligence,
                  'strength': item.strength,
                  'speed': item.speed,
                  'durability': item.durability,
                  'power': item.power,
                  'combat': item.combat,
                  'imageXs': item.imageXs,
                  'imageSm': item.imageSm,
                  'imageMd': item.imageMd,
                  'imageLg': item.imageLg
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<HeroDatabaseEntity>
      _heroDatabaseEntityInsertionAdapter;

  @override
  Future<List<HeroDatabaseEntity>> getAllHeroes() async {
    return _queryAdapter.queryList('SELECT * FROM HeroDatabaseEntity',
        mapper: (Map<String, Object?> row) => HeroDatabaseEntity(
            id: row['id'] as int,
            name: row['name'] as String,
            slug: row['slug'] as String,
            intelligence: row['intelligence'] as int,
            strength: row['strength'] as int,
            speed: row['speed'] as int,
            durability: row['durability'] as int,
            power: row['power'] as int,
            combat: row['combat'] as int,
            imageXs: row['imageXs'] as String,
            imageSm: row['imageSm'] as String,
            imageMd: row['imageMd'] as String,
            imageLg: row['imageLg'] as String));
  }

  @override
  Future<void> deleteAllHeroes() async {
    await _queryAdapter.queryNoReturn('DELETE FROM HeroDatabaseEntity');
  }

  @override
  Future<void> insertHero(HeroDatabaseEntity hero) async {
    await _heroDatabaseEntityInsertionAdapter.insert(
        hero, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertHeroes(List<HeroDatabaseEntity> heroes) async {
    await _heroDatabaseEntityInsertionAdapter.insertList(
        heroes, OnConflictStrategy.replace);
  }
}
