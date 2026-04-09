part of 'app_database.dart';

class $PendingUsersTable extends PendingUsers
    with TableInfo<$PendingUsersTable, PendingUser> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PendingUsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta = const VerificationMeta(
    'localId',
  );
  @override
  late final GeneratedColumn<int> localId = GeneratedColumn<int>(
    'local_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _remoteIdMeta = const VerificationMeta(
    'remoteId',
  );
  @override
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
    'remote_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobMeta = const VerificationMeta('job');
  @override
  late final GeneratedColumn<String> job = GeneratedColumn<String>(
    'job',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isSyncedMeta = const VerificationMeta(
    'isSynced',
  );
  @override
  late final GeneratedColumn<bool> isSynced = GeneratedColumn<bool>(
    'is_synced',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_synced" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    localId,
    remoteId,
    name,
    job,
    isSynced,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pending_users';
  @override
  VerificationContext validateIntegrity(
    Insertable<PendingUser> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(
        _localIdMeta,
        localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta),
      );
    }
    if (data.containsKey('remote_id')) {
      context.handle(
        _remoteIdMeta,
        remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('job')) {
      context.handle(
        _jobMeta,
        job.isAcceptableOrUnknown(data['job']!, _jobMeta),
      );
    } else if (isInserting) {
      context.missing(_jobMeta);
    }
    if (data.containsKey('is_synced')) {
      context.handle(
        _isSyncedMeta,
        isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  PendingUser map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PendingUser(
      localId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}local_id'],
          )!,
      remoteId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}remote_id'],
      ),
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      job:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}job'],
          )!,
      isSynced:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_synced'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $PendingUsersTable createAlias(String alias) {
    return $PendingUsersTable(attachedDatabase, alias);
  }
}

class PendingUser extends DataClass implements Insertable<PendingUser> {
  final int localId;
  final String? remoteId;
  final String name;
  final String job;
  final bool isSynced;
  final DateTime createdAt;
  const PendingUser({
    required this.localId,
    this.remoteId,
    required this.name,
    required this.job,
    required this.isSynced,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<int>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['name'] = Variable<String>(name);
    map['job'] = Variable<String>(job);
    map['is_synced'] = Variable<bool>(isSynced);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PendingUsersCompanion toCompanion(bool nullToAbsent) {
    return PendingUsersCompanion(
      localId: Value(localId),
      remoteId:
          remoteId == null && nullToAbsent
              ? const Value.absent()
              : Value(remoteId),
      name: Value(name),
      job: Value(job),
      isSynced: Value(isSynced),
      createdAt: Value(createdAt),
    );
  }

  factory PendingUser.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PendingUser(
      localId: serializer.fromJson<int>(json['localId']),
      remoteId: serializer.fromJson<String?>(json['remoteId']),
      name: serializer.fromJson<String>(json['name']),
      job: serializer.fromJson<String>(json['job']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'localId': serializer.toJson<int>(localId),
      'remoteId': serializer.toJson<String?>(remoteId),
      'name': serializer.toJson<String>(name),
      'job': serializer.toJson<String>(job),
      'isSynced': serializer.toJson<bool>(isSynced),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  PendingUser copyWith({
    int? localId,
    Value<String?> remoteId = const Value.absent(),
    String? name,
    String? job,
    bool? isSynced,
    DateTime? createdAt,
  }) => PendingUser(
    localId: localId ?? this.localId,
    remoteId: remoteId.present ? remoteId.value : this.remoteId,
    name: name ?? this.name,
    job: job ?? this.job,
    isSynced: isSynced ?? this.isSynced,
    createdAt: createdAt ?? this.createdAt,
  );
  PendingUser copyWithCompanion(PendingUsersCompanion data) {
    return PendingUser(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      name: data.name.present ? data.name.value : this.name,
      job: data.job.present ? data.job.value : this.job,
      isSynced: data.isSynced.present ? data.isSynced.value : this.isSynced,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PendingUser(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('name: $name, ')
          ..write('job: $job, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(localId, remoteId, name, job, isSynced, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PendingUser &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.name == this.name &&
          other.job == this.job &&
          other.isSynced == this.isSynced &&
          other.createdAt == this.createdAt);
}

class PendingUsersCompanion extends UpdateCompanion<PendingUser> {
  final Value<int> localId;
  final Value<String?> remoteId;
  final Value<String> name;
  final Value<String> job;
  final Value<bool> isSynced;
  final Value<DateTime> createdAt;
  const PendingUsersCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.name = const Value.absent(),
    this.job = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PendingUsersCompanion.insert({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    required String name,
    required String job,
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : name = Value(name),
       job = Value(job);
  static Insertable<PendingUser> custom({
    Expression<int>? localId,
    Expression<String>? remoteId,
    Expression<String>? name,
    Expression<String>? job,
    Expression<bool>? isSynced,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (name != null) 'name': name,
      if (job != null) 'job': job,
      if (isSynced != null) 'is_synced': isSynced,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PendingUsersCompanion copyWith({
    Value<int>? localId,
    Value<String?>? remoteId,
    Value<String>? name,
    Value<String>? job,
    Value<bool>? isSynced,
    Value<DateTime>? createdAt,
  }) {
    return PendingUsersCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      name: name ?? this.name,
      job: job ?? this.job,
      isSynced: isSynced ?? this.isSynced,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<int>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (job.present) {
      map['job'] = Variable<String>(job.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PendingUsersCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('name: $name, ')
          ..write('job: $job, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $BookmarksTable extends Bookmarks
    with TableInfo<$BookmarksTable, Bookmark> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta = const VerificationMeta(
    'localId',
  );
  @override
  late final GeneratedColumn<int> localId = GeneratedColumn<int>(
    'local_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _remoteIdMeta = const VerificationMeta(
    'remoteId',
  );
  @override
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
    'remote_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _localUserIdMeta = const VerificationMeta(
    'localUserId',
  );
  @override
  late final GeneratedColumn<int> localUserId = GeneratedColumn<int>(
    'local_user_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _remoteUserIdMeta = const VerificationMeta(
    'remoteUserId',
  );
  @override
  late final GeneratedColumn<String> remoteUserId = GeneratedColumn<String>(
    'remote_user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _movieIdMeta = const VerificationMeta(
    'movieId',
  );
  @override
  late final GeneratedColumn<int> movieId = GeneratedColumn<int>(
    'movie_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _movieTitleMeta = const VerificationMeta(
    'movieTitle',
  );
  @override
  late final GeneratedColumn<String> movieTitle = GeneratedColumn<String>(
    'movie_title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moviePosterMeta = const VerificationMeta(
    'moviePoster',
  );
  @override
  late final GeneratedColumn<String> moviePoster = GeneratedColumn<String>(
    'movie_poster',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isSyncedMeta = const VerificationMeta(
    'isSynced',
  );
  @override
  late final GeneratedColumn<bool> isSynced = GeneratedColumn<bool>(
    'is_synced',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_synced" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    localId,
    remoteId,
    localUserId,
    remoteUserId,
    movieId,
    movieTitle,
    moviePoster,
    isSynced,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarks';
  @override
  VerificationContext validateIntegrity(
    Insertable<Bookmark> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(
        _localIdMeta,
        localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta),
      );
    }
    if (data.containsKey('remote_id')) {
      context.handle(
        _remoteIdMeta,
        remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta),
      );
    }
    if (data.containsKey('local_user_id')) {
      context.handle(
        _localUserIdMeta,
        localUserId.isAcceptableOrUnknown(
          data['local_user_id']!,
          _localUserIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_localUserIdMeta);
    }
    if (data.containsKey('remote_user_id')) {
      context.handle(
        _remoteUserIdMeta,
        remoteUserId.isAcceptableOrUnknown(
          data['remote_user_id']!,
          _remoteUserIdMeta,
        ),
      );
    }
    if (data.containsKey('movie_id')) {
      context.handle(
        _movieIdMeta,
        movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta),
      );
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    if (data.containsKey('movie_title')) {
      context.handle(
        _movieTitleMeta,
        movieTitle.isAcceptableOrUnknown(data['movie_title']!, _movieTitleMeta),
      );
    } else if (isInserting) {
      context.missing(_movieTitleMeta);
    }
    if (data.containsKey('movie_poster')) {
      context.handle(
        _moviePosterMeta,
        moviePoster.isAcceptableOrUnknown(
          data['movie_poster']!,
          _moviePosterMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_moviePosterMeta);
    }
    if (data.containsKey('is_synced')) {
      context.handle(
        _isSyncedMeta,
        isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  Bookmark map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Bookmark(
      localId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}local_id'],
          )!,
      remoteId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}remote_id'],
      ),
      localUserId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}local_user_id'],
          )!,
      remoteUserId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}remote_user_id'],
      ),
      movieId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}movie_id'],
          )!,
      movieTitle:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}movie_title'],
          )!,
      moviePoster:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}movie_poster'],
          )!,
      isSynced:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_synced'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $BookmarksTable createAlias(String alias) {
    return $BookmarksTable(attachedDatabase, alias);
  }
}

class Bookmark extends DataClass implements Insertable<Bookmark> {
  final int localId;
  final String? remoteId;
  final int localUserId;
  final String? remoteUserId;
  final int movieId;
  final String movieTitle;
  final String moviePoster;
  final bool isSynced;
  final DateTime createdAt;
  const Bookmark({
    required this.localId,
    this.remoteId,
    required this.localUserId,
    this.remoteUserId,
    required this.movieId,
    required this.movieTitle,
    required this.moviePoster,
    required this.isSynced,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<int>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['local_user_id'] = Variable<int>(localUserId);
    if (!nullToAbsent || remoteUserId != null) {
      map['remote_user_id'] = Variable<String>(remoteUserId);
    }
    map['movie_id'] = Variable<int>(movieId);
    map['movie_title'] = Variable<String>(movieTitle);
    map['movie_poster'] = Variable<String>(moviePoster);
    map['is_synced'] = Variable<bool>(isSynced);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BookmarksCompanion toCompanion(bool nullToAbsent) {
    return BookmarksCompanion(
      localId: Value(localId),
      remoteId:
          remoteId == null && nullToAbsent
              ? const Value.absent()
              : Value(remoteId),
      localUserId: Value(localUserId),
      remoteUserId:
          remoteUserId == null && nullToAbsent
              ? const Value.absent()
              : Value(remoteUserId),
      movieId: Value(movieId),
      movieTitle: Value(movieTitle),
      moviePoster: Value(moviePoster),
      isSynced: Value(isSynced),
      createdAt: Value(createdAt),
    );
  }

  factory Bookmark.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Bookmark(
      localId: serializer.fromJson<int>(json['localId']),
      remoteId: serializer.fromJson<String?>(json['remoteId']),
      localUserId: serializer.fromJson<int>(json['localUserId']),
      remoteUserId: serializer.fromJson<String?>(json['remoteUserId']),
      movieId: serializer.fromJson<int>(json['movieId']),
      movieTitle: serializer.fromJson<String>(json['movieTitle']),
      moviePoster: serializer.fromJson<String>(json['moviePoster']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'localId': serializer.toJson<int>(localId),
      'remoteId': serializer.toJson<String?>(remoteId),
      'localUserId': serializer.toJson<int>(localUserId),
      'remoteUserId': serializer.toJson<String?>(remoteUserId),
      'movieId': serializer.toJson<int>(movieId),
      'movieTitle': serializer.toJson<String>(movieTitle),
      'moviePoster': serializer.toJson<String>(moviePoster),
      'isSynced': serializer.toJson<bool>(isSynced),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Bookmark copyWith({
    int? localId,
    Value<String?> remoteId = const Value.absent(),
    int? localUserId,
    Value<String?> remoteUserId = const Value.absent(),
    int? movieId,
    String? movieTitle,
    String? moviePoster,
    bool? isSynced,
    DateTime? createdAt,
  }) => Bookmark(
    localId: localId ?? this.localId,
    remoteId: remoteId.present ? remoteId.value : this.remoteId,
    localUserId: localUserId ?? this.localUserId,
    remoteUserId: remoteUserId.present ? remoteUserId.value : this.remoteUserId,
    movieId: movieId ?? this.movieId,
    movieTitle: movieTitle ?? this.movieTitle,
    moviePoster: moviePoster ?? this.moviePoster,
    isSynced: isSynced ?? this.isSynced,
    createdAt: createdAt ?? this.createdAt,
  );
  Bookmark copyWithCompanion(BookmarksCompanion data) {
    return Bookmark(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      localUserId:
          data.localUserId.present ? data.localUserId.value : this.localUserId,
      remoteUserId:
          data.remoteUserId.present
              ? data.remoteUserId.value
              : this.remoteUserId,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      movieTitle:
          data.movieTitle.present ? data.movieTitle.value : this.movieTitle,
      moviePoster:
          data.moviePoster.present ? data.moviePoster.value : this.moviePoster,
      isSynced: data.isSynced.present ? data.isSynced.value : this.isSynced,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Bookmark(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('localUserId: $localUserId, ')
          ..write('remoteUserId: $remoteUserId, ')
          ..write('movieId: $movieId, ')
          ..write('movieTitle: $movieTitle, ')
          ..write('moviePoster: $moviePoster, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    localId,
    remoteId,
    localUserId,
    remoteUserId,
    movieId,
    movieTitle,
    moviePoster,
    isSynced,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bookmark &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.localUserId == this.localUserId &&
          other.remoteUserId == this.remoteUserId &&
          other.movieId == this.movieId &&
          other.movieTitle == this.movieTitle &&
          other.moviePoster == this.moviePoster &&
          other.isSynced == this.isSynced &&
          other.createdAt == this.createdAt);
}

class BookmarksCompanion extends UpdateCompanion<Bookmark> {
  final Value<int> localId;
  final Value<String?> remoteId;
  final Value<int> localUserId;
  final Value<String?> remoteUserId;
  final Value<int> movieId;
  final Value<String> movieTitle;
  final Value<String> moviePoster;
  final Value<bool> isSynced;
  final Value<DateTime> createdAt;
  const BookmarksCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.localUserId = const Value.absent(),
    this.remoteUserId = const Value.absent(),
    this.movieId = const Value.absent(),
    this.movieTitle = const Value.absent(),
    this.moviePoster = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  BookmarksCompanion.insert({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    required int localUserId,
    this.remoteUserId = const Value.absent(),
    required int movieId,
    required String movieTitle,
    required String moviePoster,
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : localUserId = Value(localUserId),
       movieId = Value(movieId),
       movieTitle = Value(movieTitle),
       moviePoster = Value(moviePoster);
  static Insertable<Bookmark> custom({
    Expression<int>? localId,
    Expression<String>? remoteId,
    Expression<int>? localUserId,
    Expression<String>? remoteUserId,
    Expression<int>? movieId,
    Expression<String>? movieTitle,
    Expression<String>? moviePoster,
    Expression<bool>? isSynced,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (localUserId != null) 'local_user_id': localUserId,
      if (remoteUserId != null) 'remote_user_id': remoteUserId,
      if (movieId != null) 'movie_id': movieId,
      if (movieTitle != null) 'movie_title': movieTitle,
      if (moviePoster != null) 'movie_poster': moviePoster,
      if (isSynced != null) 'is_synced': isSynced,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  BookmarksCompanion copyWith({
    Value<int>? localId,
    Value<String?>? remoteId,
    Value<int>? localUserId,
    Value<String?>? remoteUserId,
    Value<int>? movieId,
    Value<String>? movieTitle,
    Value<String>? moviePoster,
    Value<bool>? isSynced,
    Value<DateTime>? createdAt,
  }) {
    return BookmarksCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      localUserId: localUserId ?? this.localUserId,
      remoteUserId: remoteUserId ?? this.remoteUserId,
      movieId: movieId ?? this.movieId,
      movieTitle: movieTitle ?? this.movieTitle,
      moviePoster: moviePoster ?? this.moviePoster,
      isSynced: isSynced ?? this.isSynced,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<int>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (localUserId.present) {
      map['local_user_id'] = Variable<int>(localUserId.value);
    }
    if (remoteUserId.present) {
      map['remote_user_id'] = Variable<String>(remoteUserId.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    if (movieTitle.present) {
      map['movie_title'] = Variable<String>(movieTitle.value);
    }
    if (moviePoster.present) {
      map['movie_poster'] = Variable<String>(moviePoster.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarksCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('localUserId: $localUserId, ')
          ..write('remoteUserId: $remoteUserId, ')
          ..write('movieId: $movieId, ')
          ..write('movieTitle: $movieTitle, ')
          ..write('moviePoster: $moviePoster, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PendingUsersTable pendingUsers = $PendingUsersTable(this);
  late final $BookmarksTable bookmarks = $BookmarksTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [pendingUsers, bookmarks];
}

typedef $$PendingUsersTableCreateCompanionBuilder =
    PendingUsersCompanion Function({
      Value<int> localId,
      Value<String?> remoteId,
      required String name,
      required String job,
      Value<bool> isSynced,
      Value<DateTime> createdAt,
    });
typedef $$PendingUsersTableUpdateCompanionBuilder =
    PendingUsersCompanion Function({
      Value<int> localId,
      Value<String?> remoteId,
      Value<String> name,
      Value<String> job,
      Value<bool> isSynced,
      Value<DateTime> createdAt,
    });

class $$PendingUsersTableFilterComposer
    extends Composer<_$AppDatabase, $PendingUsersTable> {
  $$PendingUsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get localId => $composableBuilder(
    column: $table.localId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get remoteId => $composableBuilder(
    column: $table.remoteId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get job => $composableBuilder(
    column: $table.job,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSynced => $composableBuilder(
    column: $table.isSynced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PendingUsersTableOrderingComposer
    extends Composer<_$AppDatabase, $PendingUsersTable> {
  $$PendingUsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get localId => $composableBuilder(
    column: $table.localId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get remoteId => $composableBuilder(
    column: $table.remoteId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get job => $composableBuilder(
    column: $table.job,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSynced => $composableBuilder(
    column: $table.isSynced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PendingUsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $PendingUsersTable> {
  $$PendingUsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get job =>
      $composableBuilder(column: $table.job, builder: (column) => column);

  GeneratedColumn<bool> get isSynced =>
      $composableBuilder(column: $table.isSynced, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$PendingUsersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PendingUsersTable,
          PendingUser,
          $$PendingUsersTableFilterComposer,
          $$PendingUsersTableOrderingComposer,
          $$PendingUsersTableAnnotationComposer,
          $$PendingUsersTableCreateCompanionBuilder,
          $$PendingUsersTableUpdateCompanionBuilder,
          (
            PendingUser,
            BaseReferences<_$AppDatabase, $PendingUsersTable, PendingUser>,
          ),
          PendingUser,
          PrefetchHooks Function()
        > {
  $$PendingUsersTableTableManager(_$AppDatabase db, $PendingUsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$PendingUsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$PendingUsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () =>
                  $$PendingUsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> localId = const Value.absent(),
                Value<String?> remoteId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> job = const Value.absent(),
                Value<bool> isSynced = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PendingUsersCompanion(
                localId: localId,
                remoteId: remoteId,
                name: name,
                job: job,
                isSynced: isSynced,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> localId = const Value.absent(),
                Value<String?> remoteId = const Value.absent(),
                required String name,
                required String job,
                Value<bool> isSynced = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PendingUsersCompanion.insert(
                localId: localId,
                remoteId: remoteId,
                name: name,
                job: job,
                isSynced: isSynced,
                createdAt: createdAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PendingUsersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PendingUsersTable,
      PendingUser,
      $$PendingUsersTableFilterComposer,
      $$PendingUsersTableOrderingComposer,
      $$PendingUsersTableAnnotationComposer,
      $$PendingUsersTableCreateCompanionBuilder,
      $$PendingUsersTableUpdateCompanionBuilder,
      (
        PendingUser,
        BaseReferences<_$AppDatabase, $PendingUsersTable, PendingUser>,
      ),
      PendingUser,
      PrefetchHooks Function()
    >;
typedef $$BookmarksTableCreateCompanionBuilder =
    BookmarksCompanion Function({
      Value<int> localId,
      Value<String?> remoteId,
      required int localUserId,
      Value<String?> remoteUserId,
      required int movieId,
      required String movieTitle,
      required String moviePoster,
      Value<bool> isSynced,
      Value<DateTime> createdAt,
    });
typedef $$BookmarksTableUpdateCompanionBuilder =
    BookmarksCompanion Function({
      Value<int> localId,
      Value<String?> remoteId,
      Value<int> localUserId,
      Value<String?> remoteUserId,
      Value<int> movieId,
      Value<String> movieTitle,
      Value<String> moviePoster,
      Value<bool> isSynced,
      Value<DateTime> createdAt,
    });

class $$BookmarksTableFilterComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get localId => $composableBuilder(
    column: $table.localId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get remoteId => $composableBuilder(
    column: $table.remoteId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get localUserId => $composableBuilder(
    column: $table.localUserId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get remoteUserId => $composableBuilder(
    column: $table.remoteUserId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get movieTitle => $composableBuilder(
    column: $table.movieTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get moviePoster => $composableBuilder(
    column: $table.moviePoster,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSynced => $composableBuilder(
    column: $table.isSynced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BookmarksTableOrderingComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get localId => $composableBuilder(
    column: $table.localId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get remoteId => $composableBuilder(
    column: $table.remoteId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get localUserId => $composableBuilder(
    column: $table.localUserId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get remoteUserId => $composableBuilder(
    column: $table.remoteUserId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get movieId => $composableBuilder(
    column: $table.movieId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get movieTitle => $composableBuilder(
    column: $table.movieTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get moviePoster => $composableBuilder(
    column: $table.moviePoster,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSynced => $composableBuilder(
    column: $table.isSynced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BookmarksTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<int> get localUserId => $composableBuilder(
    column: $table.localUserId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get remoteUserId => $composableBuilder(
    column: $table.remoteUserId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get movieId =>
      $composableBuilder(column: $table.movieId, builder: (column) => column);

  GeneratedColumn<String> get movieTitle => $composableBuilder(
    column: $table.movieTitle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get moviePoster => $composableBuilder(
    column: $table.moviePoster,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isSynced =>
      $composableBuilder(column: $table.isSynced, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$BookmarksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BookmarksTable,
          Bookmark,
          $$BookmarksTableFilterComposer,
          $$BookmarksTableOrderingComposer,
          $$BookmarksTableAnnotationComposer,
          $$BookmarksTableCreateCompanionBuilder,
          $$BookmarksTableUpdateCompanionBuilder,
          (Bookmark, BaseReferences<_$AppDatabase, $BookmarksTable, Bookmark>),
          Bookmark,
          PrefetchHooks Function()
        > {
  $$BookmarksTableTableManager(_$AppDatabase db, $BookmarksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$BookmarksTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$BookmarksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$BookmarksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> localId = const Value.absent(),
                Value<String?> remoteId = const Value.absent(),
                Value<int> localUserId = const Value.absent(),
                Value<String?> remoteUserId = const Value.absent(),
                Value<int> movieId = const Value.absent(),
                Value<String> movieTitle = const Value.absent(),
                Value<String> moviePoster = const Value.absent(),
                Value<bool> isSynced = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => BookmarksCompanion(
                localId: localId,
                remoteId: remoteId,
                localUserId: localUserId,
                remoteUserId: remoteUserId,
                movieId: movieId,
                movieTitle: movieTitle,
                moviePoster: moviePoster,
                isSynced: isSynced,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> localId = const Value.absent(),
                Value<String?> remoteId = const Value.absent(),
                required int localUserId,
                Value<String?> remoteUserId = const Value.absent(),
                required int movieId,
                required String movieTitle,
                required String moviePoster,
                Value<bool> isSynced = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => BookmarksCompanion.insert(
                localId: localId,
                remoteId: remoteId,
                localUserId: localUserId,
                remoteUserId: remoteUserId,
                movieId: movieId,
                movieTitle: movieTitle,
                moviePoster: moviePoster,
                isSynced: isSynced,
                createdAt: createdAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BookmarksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BookmarksTable,
      Bookmark,
      $$BookmarksTableFilterComposer,
      $$BookmarksTableOrderingComposer,
      $$BookmarksTableAnnotationComposer,
      $$BookmarksTableCreateCompanionBuilder,
      $$BookmarksTableUpdateCompanionBuilder,
      (Bookmark, BaseReferences<_$AppDatabase, $BookmarksTable, Bookmark>),
      Bookmark,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PendingUsersTableTableManager get pendingUsers =>
      $$PendingUsersTableTableManager(_db, _db.pendingUsers);
  $$BookmarksTableTableManager get bookmarks =>
      $$BookmarksTableTableManager(_db, _db.bookmarks);
}
