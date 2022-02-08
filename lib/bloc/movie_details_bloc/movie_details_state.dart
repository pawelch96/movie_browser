part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const MovieDetailsState._();
  const factory MovieDetailsState.loading() = Loading;
  const factory MovieDetailsState.movieDetailsFetched(
      MovieDetails movieDetails) = MovieDetailsFetched;
  const factory MovieDetailsState.error() = Error;

  bool get shouldItBeWatchedToday => when(
        loading: () => false,
        movieDetailsFetched: (movieDetails) =>
            (DateTime.now().weekday == DateTime.sunday) &&
            (movieDetails.revenue - movieDetails.budget) > 1000000,
        error: () => false,
      );
}
