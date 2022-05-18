import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_browser/extensions/list_ext.dart';
import 'package:movie_browser/models/movie.dart';
import 'package:movie_browser/models/movie_details.dart';
import 'package:movie_browser/services/api_service.dart';

abstract class MovieRepository {
  Future<Either<Exception, List<Movie>>> searchMovies(String query);
  Future<Either<Exception, MovieDetails>> getMovieDetails(int id);
}

@LazySingleton(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository {
  final ApiService _apiService;

  MovieRepositoryImpl(this._apiService);

  @override
  Future<Either<Exception, List<Movie>>> searchMovies(String query) async {
    try {
      final List<Movie> _moviesList = await _apiService.searchMovies(query);
      return right(
        _moviesList
            .sortedDescending(
              (e) => e.voteAverage,
            )
            .toList(),
      );
    } on Exception catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<Exception, MovieDetails>> getMovieDetails(int id) async {
    try {
      final MovieDetails _movieDetails = await _apiService.getMovieDetails(id);
      return right(_movieDetails);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
