// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchResults,
    required TResult Function() bengaluruDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchResults,
    TResult? Function()? bengaluruDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchResults,
    TResult Function()? bengaluruDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(BengaluruDetails value) bengaluruDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(BengaluruDetails value)? bengaluruDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchResults value)? searchResults,
    TResult Function(BengaluruDetails value)? bengaluruDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchResultsCopyWith<$Res> {
  factory _$$SearchResultsCopyWith(
          _$SearchResults value, $Res Function(_$SearchResults) then) =
      __$$SearchResultsCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchValue});
}

/// @nodoc
class __$$SearchResultsCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$SearchResults>
    implements _$$SearchResultsCopyWith<$Res> {
  __$$SearchResultsCopyWithImpl(
      _$SearchResults _value, $Res Function(_$SearchResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = null,
  }) {
    return _then(_$SearchResults(
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchResults implements SearchResults {
  const _$SearchResults({required this.searchValue});

  @override
  final String searchValue;

  @override
  String toString() {
    return 'HomeScreenEvent.searchResults(searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResults &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultsCopyWith<_$SearchResults> get copyWith =>
      __$$SearchResultsCopyWithImpl<_$SearchResults>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchResults,
    required TResult Function() bengaluruDetails,
  }) {
    return searchResults(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchResults,
    TResult? Function()? bengaluruDetails,
  }) {
    return searchResults?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchResults,
    TResult Function()? bengaluruDetails,
    required TResult orElse(),
  }) {
    if (searchResults != null) {
      return searchResults(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(BengaluruDetails value) bengaluruDetails,
  }) {
    return searchResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(BengaluruDetails value)? bengaluruDetails,
  }) {
    return searchResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchResults value)? searchResults,
    TResult Function(BengaluruDetails value)? bengaluruDetails,
    required TResult orElse(),
  }) {
    if (searchResults != null) {
      return searchResults(this);
    }
    return orElse();
  }
}

abstract class SearchResults implements HomeScreenEvent {
  const factory SearchResults({required final String searchValue}) =
      _$SearchResults;

  String get searchValue;
  @JsonKey(ignore: true)
  _$$SearchResultsCopyWith<_$SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BengaluruDetailsCopyWith<$Res> {
  factory _$$BengaluruDetailsCopyWith(
          _$BengaluruDetails value, $Res Function(_$BengaluruDetails) then) =
      __$$BengaluruDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BengaluruDetailsCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$BengaluruDetails>
    implements _$$BengaluruDetailsCopyWith<$Res> {
  __$$BengaluruDetailsCopyWithImpl(
      _$BengaluruDetails _value, $Res Function(_$BengaluruDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BengaluruDetails implements BengaluruDetails {
  const _$BengaluruDetails();

  @override
  String toString() {
    return 'HomeScreenEvent.bengaluruDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BengaluruDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchResults,
    required TResult Function() bengaluruDetails,
  }) {
    return bengaluruDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchResults,
    TResult? Function()? bengaluruDetails,
  }) {
    return bengaluruDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchResults,
    TResult Function()? bengaluruDetails,
    required TResult orElse(),
  }) {
    if (bengaluruDetails != null) {
      return bengaluruDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchResults value) searchResults,
    required TResult Function(BengaluruDetails value) bengaluruDetails,
  }) {
    return bengaluruDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchResults value)? searchResults,
    TResult? Function(BengaluruDetails value)? bengaluruDetails,
  }) {
    return bengaluruDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchResults value)? searchResults,
    TResult Function(BengaluruDetails value)? bengaluruDetails,
    required TResult orElse(),
  }) {
    if (bengaluruDetails != null) {
      return bengaluruDetails(this);
    }
    return orElse();
  }
}

abstract class BengaluruDetails implements HomeScreenEvent {
  const factory BengaluruDetails() = _$BengaluruDetails;
}

/// @nodoc
mixin _$HomeScreenState {
  SearchResultModel get searchResult => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call({SearchResultModel searchResult, bool isError, bool isLoading});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? isError = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResultModel,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchResultModel searchResult, bool isError, bool isLoading});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? isError = null,
    Object? isLoading = null,
  }) {
    return _then(_$Initial(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResultModel,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(
      {required this.searchResult,
      required this.isError,
      required this.isLoading});

  @override
  final SearchResultModel searchResult;
  @override
  final bool isError;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HomeScreenState(searchResult: $searchResult, isError: $isError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchResult, isError, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);
}

abstract class Initial implements HomeScreenState {
  const factory Initial(
      {required final SearchResultModel searchResult,
      required final bool isError,
      required final bool isLoading}) = _$Initial;

  @override
  SearchResultModel get searchResult;
  @override
  bool get isError;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
