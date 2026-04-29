// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatterModel _$MatterModelFromJson(Map<String, dynamic> json) {
  return _MatterModel.fromJson(json);
}

/// @nodoc
mixin _$MatterModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'matter_id')
  String get matterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  String? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sponsor_id')
  String? get sponsorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'visa_type_id')
  String? get visaTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'matter_type_id')
  String? get matterTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  String? get statusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_type')
  String get registrationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_type')
  String get detailType => throw _privateConstructorUsedError;
  @JsonKey(name: 'responsible_staff_id')
  String? get responsibleStaffId => throw _privateConstructorUsedError;
  @JsonKey(name: 'manager_id')
  String? get managerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'clerk_id')
  String? get clerkId => throw _privateConstructorUsedError;
  String get office => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_id')
  String? get departmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_source_id')
  String? get referralSourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'legal_basis_id')
  String? get legalBasisId => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagement_date')
  DateTime? get engagementDate => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_archived')
  bool get isArchived => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatterModelCopyWith<MatterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatterModelCopyWith<$Res> {
  factory $MatterModelCopyWith(
          MatterModel value, $Res Function(MatterModel) then) =
      _$MatterModelCopyWithImpl<$Res, MatterModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'matter_id') String matterId,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'sponsor_id') String? sponsorId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'visa_type_id') String? visaTypeId,
      @JsonKey(name: 'matter_type_id') String? matterTypeId,
      @JsonKey(name: 'status_id') String? statusId,
      @JsonKey(name: 'registration_type') String registrationType,
      @JsonKey(name: 'detail_type') String detailType,
      @JsonKey(name: 'responsible_staff_id') String? responsibleStaffId,
      @JsonKey(name: 'manager_id') String? managerId,
      @JsonKey(name: 'clerk_id') String? clerkId,
      String office,
      @JsonKey(name: 'department_id') String? departmentId,
      @JsonKey(name: 'referral_source_id') String? referralSourceId,
      @JsonKey(name: 'legal_basis_id') String? legalBasisId,
      @JsonKey(name: 'engagement_date') DateTime? engagementDate,
      String priority,
      String? description,
      @JsonKey(name: 'is_archived') bool isArchived,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$MatterModelCopyWithImpl<$Res, $Val extends MatterModel>
    implements $MatterModelCopyWith<$Res> {
  _$MatterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matterId = null,
    Object? clientId = freezed,
    Object? sponsorId = freezed,
    Object? categoryId = freezed,
    Object? visaTypeId = freezed,
    Object? matterTypeId = freezed,
    Object? statusId = freezed,
    Object? registrationType = null,
    Object? detailType = null,
    Object? responsibleStaffId = freezed,
    Object? managerId = freezed,
    Object? clerkId = freezed,
    Object? office = null,
    Object? departmentId = freezed,
    Object? referralSourceId = freezed,
    Object? legalBasisId = freezed,
    Object? engagementDate = freezed,
    Object? priority = null,
    Object? description = freezed,
    Object? isArchived = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matterId: null == matterId
          ? _value.matterId
          : matterId // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      sponsorId: freezed == sponsorId
          ? _value.sponsorId
          : sponsorId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      visaTypeId: freezed == visaTypeId
          ? _value.visaTypeId
          : visaTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      matterTypeId: freezed == matterTypeId
          ? _value.matterTypeId
          : matterTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationType: null == registrationType
          ? _value.registrationType
          : registrationType // ignore: cast_nullable_to_non_nullable
              as String,
      detailType: null == detailType
          ? _value.detailType
          : detailType // ignore: cast_nullable_to_non_nullable
              as String,
      responsibleStaffId: freezed == responsibleStaffId
          ? _value.responsibleStaffId
          : responsibleStaffId // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      clerkId: freezed == clerkId
          ? _value.clerkId
          : clerkId // ignore: cast_nullable_to_non_nullable
              as String?,
      office: null == office
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      referralSourceId: freezed == referralSourceId
          ? _value.referralSourceId
          : referralSourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      legalBasisId: freezed == legalBasisId
          ? _value.legalBasisId
          : legalBasisId // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementDate: freezed == engagementDate
          ? _value.engagementDate
          : engagementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatterModelImplCopyWith<$Res>
    implements $MatterModelCopyWith<$Res> {
  factory _$$MatterModelImplCopyWith(
          _$MatterModelImpl value, $Res Function(_$MatterModelImpl) then) =
      __$$MatterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'matter_id') String matterId,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'sponsor_id') String? sponsorId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'visa_type_id') String? visaTypeId,
      @JsonKey(name: 'matter_type_id') String? matterTypeId,
      @JsonKey(name: 'status_id') String? statusId,
      @JsonKey(name: 'registration_type') String registrationType,
      @JsonKey(name: 'detail_type') String detailType,
      @JsonKey(name: 'responsible_staff_id') String? responsibleStaffId,
      @JsonKey(name: 'manager_id') String? managerId,
      @JsonKey(name: 'clerk_id') String? clerkId,
      String office,
      @JsonKey(name: 'department_id') String? departmentId,
      @JsonKey(name: 'referral_source_id') String? referralSourceId,
      @JsonKey(name: 'legal_basis_id') String? legalBasisId,
      @JsonKey(name: 'engagement_date') DateTime? engagementDate,
      String priority,
      String? description,
      @JsonKey(name: 'is_archived') bool isArchived,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$MatterModelImplCopyWithImpl<$Res>
    extends _$MatterModelCopyWithImpl<$Res, _$MatterModelImpl>
    implements _$$MatterModelImplCopyWith<$Res> {
  __$$MatterModelImplCopyWithImpl(
      _$MatterModelImpl _value, $Res Function(_$MatterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matterId = null,
    Object? clientId = freezed,
    Object? sponsorId = freezed,
    Object? categoryId = freezed,
    Object? visaTypeId = freezed,
    Object? matterTypeId = freezed,
    Object? statusId = freezed,
    Object? registrationType = null,
    Object? detailType = null,
    Object? responsibleStaffId = freezed,
    Object? managerId = freezed,
    Object? clerkId = freezed,
    Object? office = null,
    Object? departmentId = freezed,
    Object? referralSourceId = freezed,
    Object? legalBasisId = freezed,
    Object? engagementDate = freezed,
    Object? priority = null,
    Object? description = freezed,
    Object? isArchived = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MatterModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matterId: null == matterId
          ? _value.matterId
          : matterId // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      sponsorId: freezed == sponsorId
          ? _value.sponsorId
          : sponsorId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      visaTypeId: freezed == visaTypeId
          ? _value.visaTypeId
          : visaTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      matterTypeId: freezed == matterTypeId
          ? _value.matterTypeId
          : matterTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationType: null == registrationType
          ? _value.registrationType
          : registrationType // ignore: cast_nullable_to_non_nullable
              as String,
      detailType: null == detailType
          ? _value.detailType
          : detailType // ignore: cast_nullable_to_non_nullable
              as String,
      responsibleStaffId: freezed == responsibleStaffId
          ? _value.responsibleStaffId
          : responsibleStaffId // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      clerkId: freezed == clerkId
          ? _value.clerkId
          : clerkId // ignore: cast_nullable_to_non_nullable
              as String?,
      office: null == office
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      referralSourceId: freezed == referralSourceId
          ? _value.referralSourceId
          : referralSourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      legalBasisId: freezed == legalBasisId
          ? _value.legalBasisId
          : legalBasisId // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementDate: freezed == engagementDate
          ? _value.engagementDate
          : engagementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatterModelImpl implements _MatterModel {
  const _$MatterModelImpl(
      {required this.id,
      @JsonKey(name: 'matter_id') required this.matterId,
      @JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'sponsor_id') this.sponsorId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'visa_type_id') this.visaTypeId,
      @JsonKey(name: 'matter_type_id') this.matterTypeId,
      @JsonKey(name: 'status_id') this.statusId,
      @JsonKey(name: 'registration_type') this.registrationType = 'client',
      @JsonKey(name: 'detail_type') this.detailType = 'migrant',
      @JsonKey(name: 'responsible_staff_id') this.responsibleStaffId,
      @JsonKey(name: 'manager_id') this.managerId,
      @JsonKey(name: 'clerk_id') this.clerkId,
      this.office = 'Main',
      @JsonKey(name: 'department_id') this.departmentId,
      @JsonKey(name: 'referral_source_id') this.referralSourceId,
      @JsonKey(name: 'legal_basis_id') this.legalBasisId,
      @JsonKey(name: 'engagement_date') this.engagementDate,
      this.priority = 'medium',
      this.description,
      @JsonKey(name: 'is_archived') this.isArchived = false,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$MatterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatterModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'matter_id')
  final String matterId;
  @override
  @JsonKey(name: 'client_id')
  final String? clientId;
  @override
  @JsonKey(name: 'sponsor_id')
  final String? sponsorId;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'visa_type_id')
  final String? visaTypeId;
  @override
  @JsonKey(name: 'matter_type_id')
  final String? matterTypeId;
  @override
  @JsonKey(name: 'status_id')
  final String? statusId;
  @override
  @JsonKey(name: 'registration_type')
  final String registrationType;
  @override
  @JsonKey(name: 'detail_type')
  final String detailType;
  @override
  @JsonKey(name: 'responsible_staff_id')
  final String? responsibleStaffId;
  @override
  @JsonKey(name: 'manager_id')
  final String? managerId;
  @override
  @JsonKey(name: 'clerk_id')
  final String? clerkId;
  @override
  @JsonKey()
  final String office;
  @override
  @JsonKey(name: 'department_id')
  final String? departmentId;
  @override
  @JsonKey(name: 'referral_source_id')
  final String? referralSourceId;
  @override
  @JsonKey(name: 'legal_basis_id')
  final String? legalBasisId;
  @override
  @JsonKey(name: 'engagement_date')
  final DateTime? engagementDate;
  @override
  @JsonKey()
  final String priority;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_archived')
  final bool isArchived;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MatterModel(id: $id, matterId: $matterId, clientId: $clientId, sponsorId: $sponsorId, categoryId: $categoryId, visaTypeId: $visaTypeId, matterTypeId: $matterTypeId, statusId: $statusId, registrationType: $registrationType, detailType: $detailType, responsibleStaffId: $responsibleStaffId, managerId: $managerId, clerkId: $clerkId, office: $office, departmentId: $departmentId, referralSourceId: $referralSourceId, legalBasisId: $legalBasisId, engagementDate: $engagementDate, priority: $priority, description: $description, isArchived: $isArchived, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matterId, matterId) ||
                other.matterId == matterId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.sponsorId, sponsorId) ||
                other.sponsorId == sponsorId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.visaTypeId, visaTypeId) ||
                other.visaTypeId == visaTypeId) &&
            (identical(other.matterTypeId, matterTypeId) ||
                other.matterTypeId == matterTypeId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.registrationType, registrationType) ||
                other.registrationType == registrationType) &&
            (identical(other.detailType, detailType) ||
                other.detailType == detailType) &&
            (identical(other.responsibleStaffId, responsibleStaffId) ||
                other.responsibleStaffId == responsibleStaffId) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.clerkId, clerkId) || other.clerkId == clerkId) &&
            (identical(other.office, office) || other.office == office) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.referralSourceId, referralSourceId) ||
                other.referralSourceId == referralSourceId) &&
            (identical(other.legalBasisId, legalBasisId) ||
                other.legalBasisId == legalBasisId) &&
            (identical(other.engagementDate, engagementDate) ||
                other.engagementDate == engagementDate) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        matterId,
        clientId,
        sponsorId,
        categoryId,
        visaTypeId,
        matterTypeId,
        statusId,
        registrationType,
        detailType,
        responsibleStaffId,
        managerId,
        clerkId,
        office,
        departmentId,
        referralSourceId,
        legalBasisId,
        engagementDate,
        priority,
        description,
        isArchived,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatterModelImplCopyWith<_$MatterModelImpl> get copyWith =>
      __$$MatterModelImplCopyWithImpl<_$MatterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatterModelImplToJson(
      this,
    );
  }
}

abstract class _MatterModel implements MatterModel {
  const factory _MatterModel(
      {required final String id,
      @JsonKey(name: 'matter_id') required final String matterId,
      @JsonKey(name: 'client_id') final String? clientId,
      @JsonKey(name: 'sponsor_id') final String? sponsorId,
      @JsonKey(name: 'category_id') final String? categoryId,
      @JsonKey(name: 'visa_type_id') final String? visaTypeId,
      @JsonKey(name: 'matter_type_id') final String? matterTypeId,
      @JsonKey(name: 'status_id') final String? statusId,
      @JsonKey(name: 'registration_type') final String registrationType,
      @JsonKey(name: 'detail_type') final String detailType,
      @JsonKey(name: 'responsible_staff_id') final String? responsibleStaffId,
      @JsonKey(name: 'manager_id') final String? managerId,
      @JsonKey(name: 'clerk_id') final String? clerkId,
      final String office,
      @JsonKey(name: 'department_id') final String? departmentId,
      @JsonKey(name: 'referral_source_id') final String? referralSourceId,
      @JsonKey(name: 'legal_basis_id') final String? legalBasisId,
      @JsonKey(name: 'engagement_date') final DateTime? engagementDate,
      final String priority,
      final String? description,
      @JsonKey(name: 'is_archived') final bool isArchived,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$MatterModelImpl;

  factory _MatterModel.fromJson(Map<String, dynamic> json) =
      _$MatterModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'matter_id')
  String get matterId;
  @override
  @JsonKey(name: 'client_id')
  String? get clientId;
  @override
  @JsonKey(name: 'sponsor_id')
  String? get sponsorId;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'visa_type_id')
  String? get visaTypeId;
  @override
  @JsonKey(name: 'matter_type_id')
  String? get matterTypeId;
  @override
  @JsonKey(name: 'status_id')
  String? get statusId;
  @override
  @JsonKey(name: 'registration_type')
  String get registrationType;
  @override
  @JsonKey(name: 'detail_type')
  String get detailType;
  @override
  @JsonKey(name: 'responsible_staff_id')
  String? get responsibleStaffId;
  @override
  @JsonKey(name: 'manager_id')
  String? get managerId;
  @override
  @JsonKey(name: 'clerk_id')
  String? get clerkId;
  @override
  String get office;
  @override
  @JsonKey(name: 'department_id')
  String? get departmentId;
  @override
  @JsonKey(name: 'referral_source_id')
  String? get referralSourceId;
  @override
  @JsonKey(name: 'legal_basis_id')
  String? get legalBasisId;
  @override
  @JsonKey(name: 'engagement_date')
  DateTime? get engagementDate;
  @override
  String get priority;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_archived')
  bool get isArchived;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MatterModelImplCopyWith<_$MatterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
