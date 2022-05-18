// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailsEventTearOff {
  const _$MovieDetailsEventTearOff();

  GetMovieDetails getMovieDetails(int id) {
    return GetMovieDetails(
      id,
    );
  }
}

/// @nodoc
const $MovieDetailsEvent = _$MovieDetailsEventTearOff();

/// @nodoc
mixin _$MovieDetailsEvent {
  int get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getMovieDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? getMovieDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getMovieDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetails value) getMovieDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieDetails value)? getMovieDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetails value)? getMovieDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  final MovieDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $GetMovieDetailsCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory $GetMovieDetailsCopyWith(
          GetMovieDetails value, $Res Function(GetMovieDetails) then) =
      _$GetMovieDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$GetMovieDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res>
    implements $GetMovieDetailsCopyWith<$Res> {
  _$GetMovieDetailsCopyWithImpl(
      GetMovieDetails _value, $Res Function(GetMovieDetails) _then)
      : super(_value, (v) => _then(v as GetMovieDetails));

  @override
  GetMovieDetails get _value => super._value as GetMovieDetails;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(GetMovieDetails(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMovieDetails implements GetMovieDetails {
  const _$GetMovieDetails(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'MovieDetailsEvent.getMovieDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMovieDetails &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $GetMovieDetailsCopyWith<GetMovieDetails> get copyWith =>
      _$GetMovieDetailsCopyWithImpl<GetMovieDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getMovieDetails,
  }) {
    return getMovieDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? getMovieDetails,
  }) {
    return getMovieDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getMovieDetails,
    required TResult orElse(),
  }) {
    if (getMovieDetails != null) {
      return getMovieDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetails value) getMovieDetails,
  }) {
    return getMovieDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieDetails value)? getMovieDetails,
  }) {
    return getMovieDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetails value)? getMovieDetails,
    required TResult orElse(),
  }) {
    if (getMovieDetails != null) {
      return getMovieDetails(this);
    }
    return orElse();
  }
}

abstract class GetMovieDetails implements MovieDetailsEvent {
  const factory GetMovieDetails(int id) = _$GetMovieDetails;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  $GetMovieDetailsCopyWith<GetMovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MovieDetailsStateTearOff {
  const _$MovieDetailsStateTearOff();

  Loading loading() {
    return const Loading();
  }

  MovieDetailsFetched movieDetailsFetched(MovieDetails movieDetails) {
    return MovieDetailsFetched(
      movieDetails,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $MovieDetailsState = _$MovieDetailsStateTearOff();

/// @nodoc
mixin _$MovieDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails) movieDetailsFetched,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? movieDetailsFetched,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? movieDetailsFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieDetailsFetched value) movieDetailsFetched,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieDetailsFetched value)? movieDetailsFetched,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieDetailsFetched value)? movieDetailsFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  final MovieDetailsState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading extends Loading {
  const _$Loading() : super._();

  @override
  String toString() {
    return 'MovieDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails) movieDetailsFetched,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? movieDetailsFetched,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? movieDetailsFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieDetailsFetched value) movieDetailsFetched,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieDetailsFetched value)? movieDetailsFetched,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieDetailsFetched value)? movieDetailsFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading extends MovieDetailsState {
  const factory Loading() = _$Loading;
  const Loading._() : super._();
}

/// @nodoc
abstract class $MovieDetailsFetchedCopyWith<$Res> {
  factory $MovieDetailsFetchedCopyWith(
          MovieDetailsFetched value, $Res Function(MovieDetailsFetched) then) =
      _$MovieDetailsFetchedCopyWithImpl<$Res>;
  $Res call({MovieDetails movieDetails});
}

/// @nodoc
class _$MovieDetailsFetchedCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsFetchedCopyWith<$Res> {
  _$MovieDetailsFetchedCopyWithImpl(
      MovieDetailsFetched _value, $Res Function(MovieDetailsFetched) _then)
      : super(_value, (v) => _then(v as MovieDetailsFetched));

  @override
  MovieDetailsFetched get _value => super._value as MovieDetailsFetched;

  @override
  $Res call({
    Object? movieDetails = freezed,
  }) {
    return _then(MovieDetailsFetched(
      movieDetails == freezed
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetails,
    ));
  }
}

/// @nodoc

class _$MovieDetailsFetched extends MovieDetailsFetched {
  const _$MovieDetailsFetched(this.movieDetails) : super._();

  @override
  final MovieDetails movieDetails;

  @override
  String toString() {
    return 'MovieDetailsState.movieDetailsFetched(movieDetails: $movieDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailsFetched &&
            const DeepCollectionEquality()
                .equals(other.movieDetails, movieDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(movieDetails));

  @JsonKey(ignore: true)
  @override
  $MovieDetailsFetchedCopyWith<MovieDetailsFetched> get copyWith =>
      _$MovieDetailsFetchedCopyWithImpl<MovieDetailsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails) movieDetailsFetched,
    required TResult Function() error,
  }) {
    return movieDetailsFetched(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? movieDetailsFetched,
    TResult Function()? error,
  }) {
    return movieDetailsFetched?.call(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? movieDetailsFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (movieDetailsFetched != null) {
      return movieDetailsFetched(movieDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieDetailsFetched value) movieDetailsFetched,
    required TResult Function(Error value) error,
  }) {
    return movieDetailsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieDetailsFetched value)? movieDetailsFetched,
    TResult Function(Error value)? error,
  }) {
    return movieDetailsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieDetailsFetched value)? movieDetailsFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (movieDetailsFetched != null) {
      return movieDetailsFetched(this);
    }
    return orElse();
  }
}

abstract class MovieDetailsFetched extends MovieDetailsState {
  const factory MovieDetailsFetched(MovieDetails movieDetails) =
      _$MovieDetailsFetched;
  const MovieDetailsFetched._() : super._();

  MovieDetails get movieDetails;
  @JsonKey(ignore: true)
  $MovieDetailsFetchedCopyWith<MovieDetailsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc

class _$Error extends Error {
  const _$Error() : super._();

  @override
  String toString() {
    return 'MovieDetailsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails) movieDetailsFetched,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? movieDetailsFetched,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? movieDetailsFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieDetailsFetched value) movieDetailsFetched,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieDetailsFetched value)? movieDetailsFetched,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieDetailsFetched value)? movieDetailsFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error extends MovieDetailsState {
  const factory Error() = _$Error;
  const Error._() : super._();
}
