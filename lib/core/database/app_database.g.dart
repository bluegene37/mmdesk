// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MenuItemsTable extends MenuItems
    with TableInfo<$MenuItemsTable, MenuItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MenuItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _parentIdMeta =
      const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<int> parentId = GeneratedColumn<int>(
      'parent_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _actionKeyMeta =
      const VerificationMeta('actionKey');
  @override
  late final GeneratedColumn<String> actionKey = GeneratedColumn<String>(
      'action_key', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _requiredPermissionMeta =
      const VerificationMeta('requiredPermission');
  @override
  late final GeneratedColumn<String> requiredPermission =
      GeneratedColumn<String>('required_permission', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sortOrderMeta =
      const VerificationMeta('sortOrder');
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
      'sort_order', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, parentId, label, actionKey, requiredPermission, sortOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'menu_items';
  @override
  VerificationContext validateIntegrity(Insertable<MenuItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('action_key')) {
      context.handle(_actionKeyMeta,
          actionKey.isAcceptableOrUnknown(data['action_key']!, _actionKeyMeta));
    }
    if (data.containsKey('required_permission')) {
      context.handle(
          _requiredPermissionMeta,
          requiredPermission.isAcceptableOrUnknown(
              data['required_permission']!, _requiredPermissionMeta));
    }
    if (data.containsKey('sort_order')) {
      context.handle(_sortOrderMeta,
          sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MenuItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MenuItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      parentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent_id']),
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!,
      actionKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}action_key']),
      requiredPermission: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}required_permission']),
      sortOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sort_order'])!,
    );
  }

  @override
  $MenuItemsTable createAlias(String alias) {
    return $MenuItemsTable(attachedDatabase, alias);
  }
}

class MenuItem extends DataClass implements Insertable<MenuItem> {
  final int id;
  final int? parentId;
  final String label;
  final String? actionKey;
  final String? requiredPermission;
  final int sortOrder;
  const MenuItem(
      {required this.id,
      this.parentId,
      required this.label,
      this.actionKey,
      this.requiredPermission,
      required this.sortOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    map['label'] = Variable<String>(label);
    if (!nullToAbsent || actionKey != null) {
      map['action_key'] = Variable<String>(actionKey);
    }
    if (!nullToAbsent || requiredPermission != null) {
      map['required_permission'] = Variable<String>(requiredPermission);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  MenuItemsCompanion toCompanion(bool nullToAbsent) {
    return MenuItemsCompanion(
      id: Value(id),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      label: Value(label),
      actionKey: actionKey == null && nullToAbsent
          ? const Value.absent()
          : Value(actionKey),
      requiredPermission: requiredPermission == null && nullToAbsent
          ? const Value.absent()
          : Value(requiredPermission),
      sortOrder: Value(sortOrder),
    );
  }

  factory MenuItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MenuItem(
      id: serializer.fromJson<int>(json['id']),
      parentId: serializer.fromJson<int?>(json['parentId']),
      label: serializer.fromJson<String>(json['label']),
      actionKey: serializer.fromJson<String?>(json['actionKey']),
      requiredPermission:
          serializer.fromJson<String?>(json['requiredPermission']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'parentId': serializer.toJson<int?>(parentId),
      'label': serializer.toJson<String>(label),
      'actionKey': serializer.toJson<String?>(actionKey),
      'requiredPermission': serializer.toJson<String?>(requiredPermission),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  MenuItem copyWith(
          {int? id,
          Value<int?> parentId = const Value.absent(),
          String? label,
          Value<String?> actionKey = const Value.absent(),
          Value<String?> requiredPermission = const Value.absent(),
          int? sortOrder}) =>
      MenuItem(
        id: id ?? this.id,
        parentId: parentId.present ? parentId.value : this.parentId,
        label: label ?? this.label,
        actionKey: actionKey.present ? actionKey.value : this.actionKey,
        requiredPermission: requiredPermission.present
            ? requiredPermission.value
            : this.requiredPermission,
        sortOrder: sortOrder ?? this.sortOrder,
      );
  MenuItem copyWithCompanion(MenuItemsCompanion data) {
    return MenuItem(
      id: data.id.present ? data.id.value : this.id,
      parentId: data.parentId.present ? data.parentId.value : this.parentId,
      label: data.label.present ? data.label.value : this.label,
      actionKey: data.actionKey.present ? data.actionKey.value : this.actionKey,
      requiredPermission: data.requiredPermission.present
          ? data.requiredPermission.value
          : this.requiredPermission,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MenuItem(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('label: $label, ')
          ..write('actionKey: $actionKey, ')
          ..write('requiredPermission: $requiredPermission, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, parentId, label, actionKey, requiredPermission, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MenuItem &&
          other.id == this.id &&
          other.parentId == this.parentId &&
          other.label == this.label &&
          other.actionKey == this.actionKey &&
          other.requiredPermission == this.requiredPermission &&
          other.sortOrder == this.sortOrder);
}

class MenuItemsCompanion extends UpdateCompanion<MenuItem> {
  final Value<int> id;
  final Value<int?> parentId;
  final Value<String> label;
  final Value<String?> actionKey;
  final Value<String?> requiredPermission;
  final Value<int> sortOrder;
  const MenuItemsCompanion({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    this.label = const Value.absent(),
    this.actionKey = const Value.absent(),
    this.requiredPermission = const Value.absent(),
    this.sortOrder = const Value.absent(),
  });
  MenuItemsCompanion.insert({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    required String label,
    this.actionKey = const Value.absent(),
    this.requiredPermission = const Value.absent(),
    this.sortOrder = const Value.absent(),
  }) : label = Value(label);
  static Insertable<MenuItem> custom({
    Expression<int>? id,
    Expression<int>? parentId,
    Expression<String>? label,
    Expression<String>? actionKey,
    Expression<String>? requiredPermission,
    Expression<int>? sortOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentId != null) 'parent_id': parentId,
      if (label != null) 'label': label,
      if (actionKey != null) 'action_key': actionKey,
      if (requiredPermission != null) 'required_permission': requiredPermission,
      if (sortOrder != null) 'sort_order': sortOrder,
    });
  }

  MenuItemsCompanion copyWith(
      {Value<int>? id,
      Value<int?>? parentId,
      Value<String>? label,
      Value<String?>? actionKey,
      Value<String?>? requiredPermission,
      Value<int>? sortOrder}) {
    return MenuItemsCompanion(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      label: label ?? this.label,
      actionKey: actionKey ?? this.actionKey,
      requiredPermission: requiredPermission ?? this.requiredPermission,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (actionKey.present) {
      map['action_key'] = Variable<String>(actionKey.value);
    }
    if (requiredPermission.present) {
      map['required_permission'] = Variable<String>(requiredPermission.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenuItemsCompanion(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('label: $label, ')
          ..write('actionKey: $actionKey, ')
          ..write('requiredPermission: $requiredPermission, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MenuItemsTable menuItems = $MenuItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [menuItems];
}

typedef $$MenuItemsTableCreateCompanionBuilder = MenuItemsCompanion Function({
  Value<int> id,
  Value<int?> parentId,
  required String label,
  Value<String?> actionKey,
  Value<String?> requiredPermission,
  Value<int> sortOrder,
});
typedef $$MenuItemsTableUpdateCompanionBuilder = MenuItemsCompanion Function({
  Value<int> id,
  Value<int?> parentId,
  Value<String> label,
  Value<String?> actionKey,
  Value<String?> requiredPermission,
  Value<int> sortOrder,
});

class $$MenuItemsTableFilterComposer
    extends Composer<_$AppDatabase, $MenuItemsTable> {
  $$MenuItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get parentId => $composableBuilder(
      column: $table.parentId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get actionKey => $composableBuilder(
      column: $table.actionKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get requiredPermission => $composableBuilder(
      column: $table.requiredPermission,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sortOrder => $composableBuilder(
      column: $table.sortOrder, builder: (column) => ColumnFilters(column));
}

class $$MenuItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $MenuItemsTable> {
  $$MenuItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get parentId => $composableBuilder(
      column: $table.parentId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get actionKey => $composableBuilder(
      column: $table.actionKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get requiredPermission => $composableBuilder(
      column: $table.requiredPermission,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sortOrder => $composableBuilder(
      column: $table.sortOrder, builder: (column) => ColumnOrderings(column));
}

class $$MenuItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MenuItemsTable> {
  $$MenuItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get parentId =>
      $composableBuilder(column: $table.parentId, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get actionKey =>
      $composableBuilder(column: $table.actionKey, builder: (column) => column);

  GeneratedColumn<String> get requiredPermission => $composableBuilder(
      column: $table.requiredPermission, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);
}

class $$MenuItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MenuItemsTable,
    MenuItem,
    $$MenuItemsTableFilterComposer,
    $$MenuItemsTableOrderingComposer,
    $$MenuItemsTableAnnotationComposer,
    $$MenuItemsTableCreateCompanionBuilder,
    $$MenuItemsTableUpdateCompanionBuilder,
    (MenuItem, BaseReferences<_$AppDatabase, $MenuItemsTable, MenuItem>),
    MenuItem,
    PrefetchHooks Function()> {
  $$MenuItemsTableTableManager(_$AppDatabase db, $MenuItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MenuItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MenuItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MenuItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> parentId = const Value.absent(),
            Value<String> label = const Value.absent(),
            Value<String?> actionKey = const Value.absent(),
            Value<String?> requiredPermission = const Value.absent(),
            Value<int> sortOrder = const Value.absent(),
          }) =>
              MenuItemsCompanion(
            id: id,
            parentId: parentId,
            label: label,
            actionKey: actionKey,
            requiredPermission: requiredPermission,
            sortOrder: sortOrder,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> parentId = const Value.absent(),
            required String label,
            Value<String?> actionKey = const Value.absent(),
            Value<String?> requiredPermission = const Value.absent(),
            Value<int> sortOrder = const Value.absent(),
          }) =>
              MenuItemsCompanion.insert(
            id: id,
            parentId: parentId,
            label: label,
            actionKey: actionKey,
            requiredPermission: requiredPermission,
            sortOrder: sortOrder,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MenuItemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MenuItemsTable,
    MenuItem,
    $$MenuItemsTableFilterComposer,
    $$MenuItemsTableOrderingComposer,
    $$MenuItemsTableAnnotationComposer,
    $$MenuItemsTableCreateCompanionBuilder,
    $$MenuItemsTableUpdateCompanionBuilder,
    (MenuItem, BaseReferences<_$AppDatabase, $MenuItemsTable, MenuItem>),
    MenuItem,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MenuItemsTableTableManager get menuItems =>
      $$MenuItemsTableTableManager(_db, _db.menuItems);
}
