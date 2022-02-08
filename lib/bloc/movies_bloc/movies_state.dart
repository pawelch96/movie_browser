part of 'movies_bloc.dart';

@freezed
class MoviesState with _$MoviesState {
  factory MoviesState.initial() = Initial;
  factory MoviesState.loading() = Loading;
  factory MoviesState.moviesListFetched(List<Movie> movies) = MoviesListFetched;
  factory MoviesState.error() = Error;
}
