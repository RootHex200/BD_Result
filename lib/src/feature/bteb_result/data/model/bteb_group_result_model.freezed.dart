// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bteb_group_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BtebGroupResultModel _$BtebGroupResultModelFromJson(Map<String, dynamic> json) {
  return _BtebGroupResultModel.fromJson(json);
}

/// @nodoc
mixin _$BtebGroupResultModel {
  List<Result>? get result => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this BtebGroupResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BtebGroupResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BtebGroupResultModelCopyWith<BtebGroupResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BtebGroupResultModelCopyWith<$Res> {
  factory $BtebGroupResultModelCopyWith(BtebGroupResultModel value,
          $Res Function(BtebGroupResultModel) then) =
      _$BtebGroupResultModelCopyWithImpl<$Res, BtebGroupResultModel>;
  @useResult
  $Res call({List<Result>? result, int? total});
}

/// @nodoc
class _$BtebGroupResultModelCopyWithImpl<$Res,
        $Val extends BtebGroupResultModel>
    implements $BtebGroupResultModelCopyWith<$Res> {
  _$BtebGroupResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BtebGroupResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BtebGroupResultModelImplCopyWith<$Res>
    implements $BtebGroupResultModelCopyWith<$Res> {
  factory _$$BtebGroupResultModelImplCopyWith(_$BtebGroupResultModelImpl value,
          $Res Function(_$BtebGroupResultModelImpl) then) =
      __$$BtebGroupResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Result>? result, int? total});
}

/// @nodoc
class __$$BtebGroupResultModelImplCopyWithImpl<$Res>
    extends _$BtebGroupResultModelCopyWithImpl<$Res, _$BtebGroupResultModelImpl>
    implements _$$BtebGroupResultModelImplCopyWith<$Res> {
  __$$BtebGroupResultModelImplCopyWithImpl(_$BtebGroupResultModelImpl _value,
      $Res Function(_$BtebGroupResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BtebGroupResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? total = freezed,
  }) {
    return _then(_$BtebGroupResultModelImpl(
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BtebGroupResultModelImpl implements _BtebGroupResultModel {
  const _$BtebGroupResultModelImpl({final List<Result>? result, this.total})
      : _result = result;

  factory _$BtebGroupResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BtebGroupResultModelImplFromJson(json);

  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;

  @override
  String toString() {
    return 'BtebGroupResultModel(result: $result, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BtebGroupResultModelImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_result), total);

  /// Create a copy of BtebGroupResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BtebGroupResultModelImplCopyWith<_$BtebGroupResultModelImpl>
      get copyWith =>
          __$$BtebGroupResultModelImplCopyWithImpl<_$BtebGroupResultModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BtebGroupResultModelImplToJson(
      this,
    );
  }
}

abstract class _BtebGroupResultModel implements BtebGroupResultModel {
  const factory _BtebGroupResultModel(
      {final List<Result>? result,
      final int? total}) = _$BtebGroupResultModelImpl;

  factory _BtebGroupResultModel.fromJson(Map<String, dynamic> json) =
      _$BtebGroupResultModelImpl.fromJson;

  @override
  List<Result>? get result;
  @override
  int? get total;

  /// Create a copy of BtebGroupResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BtebGroupResultModelImplCopyWith<_$BtebGroupResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: '_id')
  String? get sId => throw _privateConstructorUsedError;
  String? get technology => throw _privateConstructorUsedError;
  Results? get results => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;
  dynamic get regulation => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  String? get date => throw _privateConstructorUsedError;
  String? get roll => throw _privateConstructorUsedError;
  dynamic get institute => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? sId,
      String? technology,
      Results? results,
      String? semester,
      dynamic regulation,
      @JsonKey(name: 'Date') String? date,
      String? roll,
      dynamic institute});

  $ResultsCopyWith<$Res>? get results;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? technology = freezed,
    Object? results = freezed,
    Object? semester = freezed,
    Object? regulation = freezed,
    Object? date = freezed,
    Object? roll = freezed,
    Object? institute = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      technology: freezed == technology
          ? _value.technology
          : technology // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Results?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      regulation: freezed == regulation
          ? _value.regulation
          : regulation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      roll: freezed == roll
          ? _value.roll
          : roll // ignore: cast_nullable_to_non_nullable
              as String?,
      institute: freezed == institute
          ? _value.institute
          : institute // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultsCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $ResultsCopyWith<$Res>(_value.results!, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? sId,
      String? technology,
      Results? results,
      String? semester,
      dynamic regulation,
      @JsonKey(name: 'Date') String? date,
      String? roll,
      dynamic institute});

  @override
  $ResultsCopyWith<$Res>? get results;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? technology = freezed,
    Object? results = freezed,
    Object? semester = freezed,
    Object? regulation = freezed,
    Object? date = freezed,
    Object? roll = freezed,
    Object? institute = freezed,
  }) {
    return _then(_$ResultImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      technology: freezed == technology
          ? _value.technology
          : technology // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Results?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      regulation: freezed == regulation
          ? _value.regulation
          : regulation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      roll: freezed == roll
          ? _value.roll
          : roll // ignore: cast_nullable_to_non_nullable
              as String?,
      institute: freezed == institute
          ? _value.institute
          : institute // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {@JsonKey(name: '_id') this.sId,
      this.technology,
      this.results,
      this.semester,
      this.regulation,
      @JsonKey(name: 'Date') this.date,
      this.roll,
      this.institute});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? sId;
  @override
  final String? technology;
  @override
  final Results? results;
  @override
  final String? semester;
  @override
  final dynamic regulation;
  @override
  @JsonKey(name: 'Date')
  final String? date;
  @override
  final String? roll;
  @override
  final dynamic institute;

  @override
  String toString() {
    return 'Result(sId: $sId, technology: $technology, results: $results, semester: $semester, regulation: $regulation, date: $date, roll: $roll, institute: $institute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.technology, technology) ||
                other.technology == technology) &&
            (identical(other.results, results) || other.results == results) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            const DeepCollectionEquality()
                .equals(other.regulation, regulation) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.roll, roll) || other.roll == roll) &&
            const DeepCollectionEquality().equals(other.institute, institute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sId,
      technology,
      results,
      semester,
      const DeepCollectionEquality().hash(regulation),
      date,
      roll,
      const DeepCollectionEquality().hash(institute));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@JsonKey(name: '_id') final String? sId,
      final String? technology,
      final Results? results,
      final String? semester,
      final dynamic regulation,
      @JsonKey(name: 'Date') final String? date,
      final String? roll,
      final dynamic institute}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get sId;
  @override
  String? get technology;
  @override
  Results? get results;
  @override
  String? get semester;
  @override
  dynamic get regulation;
  @override
  @JsonKey(name: 'Date')
  String? get date;
  @override
  String? get roll;
  @override
  dynamic get institute;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
