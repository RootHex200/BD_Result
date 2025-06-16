// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bteb_single_result_model_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BtebSingleResultModel _$BtebSingleResultModelFromJson(
    Map<String, dynamic> json) {
  return _BtebSingleResultModel.fromJson(json);
}

/// @nodoc
mixin _$BtebSingleResultModel {
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

  /// Serializes this BtebSingleResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BtebSingleResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BtebSingleResultModelCopyWith<BtebSingleResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BtebSingleResultModelCopyWith<$Res> {
  factory $BtebSingleResultModelCopyWith(BtebSingleResultModel value,
          $Res Function(BtebSingleResultModel) then) =
      _$BtebSingleResultModelCopyWithImpl<$Res, BtebSingleResultModel>;
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
class _$BtebSingleResultModelCopyWithImpl<$Res,
        $Val extends BtebSingleResultModel>
    implements $BtebSingleResultModelCopyWith<$Res> {
  _$BtebSingleResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BtebSingleResultModel
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

  /// Create a copy of BtebSingleResultModel
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
abstract class _$$BtebSingleResultModelImplCopyWith<$Res>
    implements $BtebSingleResultModelCopyWith<$Res> {
  factory _$$BtebSingleResultModelImplCopyWith(
          _$BtebSingleResultModelImpl value,
          $Res Function(_$BtebSingleResultModelImpl) then) =
      __$$BtebSingleResultModelImplCopyWithImpl<$Res>;
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
class __$$BtebSingleResultModelImplCopyWithImpl<$Res>
    extends _$BtebSingleResultModelCopyWithImpl<$Res,
        _$BtebSingleResultModelImpl>
    implements _$$BtebSingleResultModelImplCopyWith<$Res> {
  __$$BtebSingleResultModelImplCopyWithImpl(_$BtebSingleResultModelImpl _value,
      $Res Function(_$BtebSingleResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BtebSingleResultModel
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
    return _then(_$BtebSingleResultModelImpl(
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
class _$BtebSingleResultModelImpl implements _BtebSingleResultModel {
  const _$BtebSingleResultModelImpl(
      {@JsonKey(name: '_id') this.sId,
      this.technology,
      this.results,
      this.semester,
      this.regulation,
      @JsonKey(name: 'Date') this.date,
      this.roll,
      this.institute});

  factory _$BtebSingleResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BtebSingleResultModelImplFromJson(json);

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
    return 'BtebSingleResultModel(sId: $sId, technology: $technology, results: $results, semester: $semester, regulation: $regulation, date: $date, roll: $roll, institute: $institute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BtebSingleResultModelImpl &&
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

  /// Create a copy of BtebSingleResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BtebSingleResultModelImplCopyWith<_$BtebSingleResultModelImpl>
      get copyWith => __$$BtebSingleResultModelImplCopyWithImpl<
          _$BtebSingleResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BtebSingleResultModelImplToJson(
      this,
    );
  }
}

abstract class _BtebSingleResultModel implements BtebSingleResultModel {
  const factory _BtebSingleResultModel(
      {@JsonKey(name: '_id') final String? sId,
      final String? technology,
      final Results? results,
      final String? semester,
      final dynamic regulation,
      @JsonKey(name: 'Date') final String? date,
      final String? roll,
      final dynamic institute}) = _$BtebSingleResultModelImpl;

  factory _BtebSingleResultModel.fromJson(Map<String, dynamic> json) =
      _$BtebSingleResultModelImpl.fromJson;

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

  /// Create a copy of BtebSingleResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BtebSingleResultModelImplCopyWith<_$BtebSingleResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  dynamic get passed => throw _privateConstructorUsedError;
  String? get rollP => throw _privateConstructorUsedError;
  dynamic get gpa => throw _privateConstructorUsedError;
  @JsonKey(name: 'GPA')
  dynamic get gPA => throw _privateConstructorUsedError;
  @JsonKey(name: 'CGPA')
  dynamic get cGPA => throw _privateConstructorUsedError;
  @JsonKey(name: 'CGPAp')
  dynamic get cGPAp => throw _privateConstructorUsedError;
  dynamic get failed => throw _privateConstructorUsedError;
  String? get rollF => throw _privateConstructorUsedError;
  @JsonKey(name: "subjects")
  String? get subjects => throw _privateConstructorUsedError;

  /// Serializes this Results to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {dynamic passed,
      String? rollP,
      dynamic gpa,
      @JsonKey(name: 'GPA') dynamic gPA,
      @JsonKey(name: 'CGPA') dynamic cGPA,
      @JsonKey(name: 'CGPAp') dynamic cGPAp,
      dynamic failed,
      String? rollF,
      @JsonKey(name: "subjects") String? subjects});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passed = freezed,
    Object? rollP = freezed,
    Object? gpa = freezed,
    Object? gPA = freezed,
    Object? cGPA = freezed,
    Object? cGPAp = freezed,
    Object? failed = freezed,
    Object? rollF = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_value.copyWith(
      passed: freezed == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rollP: freezed == rollP
          ? _value.rollP
          : rollP // ignore: cast_nullable_to_non_nullable
              as String?,
      gpa: freezed == gpa
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gPA: freezed == gPA
          ? _value.gPA
          : gPA // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cGPA: freezed == cGPA
          ? _value.cGPA
          : cGPA // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cGPAp: freezed == cGPAp
          ? _value.cGPAp
          : cGPAp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      failed: freezed == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rollF: freezed == rollF
          ? _value.rollF
          : rollF // ignore: cast_nullable_to_non_nullable
              as String?,
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultsImplCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$ResultsImplCopyWith(
          _$ResultsImpl value, $Res Function(_$ResultsImpl) then) =
      __$$ResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic passed,
      String? rollP,
      dynamic gpa,
      @JsonKey(name: 'GPA') dynamic gPA,
      @JsonKey(name: 'CGPA') dynamic cGPA,
      @JsonKey(name: 'CGPAp') dynamic cGPAp,
      dynamic failed,
      String? rollF,
      @JsonKey(name: "subjects") String? subjects});
}

/// @nodoc
class __$$ResultsImplCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$ResultsImpl>
    implements _$$ResultsImplCopyWith<$Res> {
  __$$ResultsImplCopyWithImpl(
      _$ResultsImpl _value, $Res Function(_$ResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passed = freezed,
    Object? rollP = freezed,
    Object? gpa = freezed,
    Object? gPA = freezed,
    Object? cGPA = freezed,
    Object? cGPAp = freezed,
    Object? failed = freezed,
    Object? rollF = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_$ResultsImpl(
      passed: freezed == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rollP: freezed == rollP
          ? _value.rollP
          : rollP // ignore: cast_nullable_to_non_nullable
              as String?,
      gpa: freezed == gpa
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gPA: freezed == gPA
          ? _value.gPA
          : gPA // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cGPA: freezed == cGPA
          ? _value.cGPA
          : cGPA // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cGPAp: freezed == cGPAp
          ? _value.cGPAp
          : cGPAp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      failed: freezed == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rollF: freezed == rollF
          ? _value.rollF
          : rollF // ignore: cast_nullable_to_non_nullable
              as String?,
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl implements _Results {
  const _$ResultsImpl(
      {this.passed,
      this.rollP,
      this.gpa,
      @JsonKey(name: 'GPA') this.gPA,
      @JsonKey(name: 'CGPA') this.cGPA,
      @JsonKey(name: 'CGPAp') this.cGPAp,
      this.failed,
      this.rollF,
      @JsonKey(name: "subjects") this.subjects});

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  final dynamic passed;
  @override
  final String? rollP;
  @override
  final dynamic gpa;
  @override
  @JsonKey(name: 'GPA')
  final dynamic gPA;
  @override
  @JsonKey(name: 'CGPA')
  final dynamic cGPA;
  @override
  @JsonKey(name: 'CGPAp')
  final dynamic cGPAp;
  @override
  final dynamic failed;
  @override
  final String? rollF;
  @override
  @JsonKey(name: "subjects")
  final String? subjects;

  @override
  String toString() {
    return 'Results(passed: $passed, rollP: $rollP, gpa: $gpa, gPA: $gPA, cGPA: $cGPA, cGPAp: $cGPAp, failed: $failed, rollF: $rollF, subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            const DeepCollectionEquality().equals(other.passed, passed) &&
            (identical(other.rollP, rollP) || other.rollP == rollP) &&
            const DeepCollectionEquality().equals(other.gpa, gpa) &&
            const DeepCollectionEquality().equals(other.gPA, gPA) &&
            const DeepCollectionEquality().equals(other.cGPA, cGPA) &&
            const DeepCollectionEquality().equals(other.cGPAp, cGPAp) &&
            const DeepCollectionEquality().equals(other.failed, failed) &&
            (identical(other.rollF, rollF) || other.rollF == rollF) &&
            (identical(other.subjects, subjects) ||
                other.subjects == subjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(passed),
      rollP,
      const DeepCollectionEquality().hash(gpa),
      const DeepCollectionEquality().hash(gPA),
      const DeepCollectionEquality().hash(cGPA),
      const DeepCollectionEquality().hash(cGPAp),
      const DeepCollectionEquality().hash(failed),
      rollF,
      subjects);

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      __$$ResultsImplCopyWithImpl<_$ResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsImplToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {final dynamic passed,
      final String? rollP,
      final dynamic gpa,
      @JsonKey(name: 'GPA') final dynamic gPA,
      @JsonKey(name: 'CGPA') final dynamic cGPA,
      @JsonKey(name: 'CGPAp') final dynamic cGPAp,
      final dynamic failed,
      final String? rollF,
      @JsonKey(name: "subjects") final String? subjects}) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  dynamic get passed;
  @override
  String? get rollP;
  @override
  dynamic get gpa;
  @override
  @JsonKey(name: 'GPA')
  dynamic get gPA;
  @override
  @JsonKey(name: 'CGPA')
  dynamic get cGPA;
  @override
  @JsonKey(name: 'CGPAp')
  dynamic get cGPAp;
  @override
  dynamic get failed;
  @override
  String? get rollF;
  @override
  @JsonKey(name: "subjects")
  String? get subjects;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
