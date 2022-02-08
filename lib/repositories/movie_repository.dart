import 'package:dartz/dartz.dart';
import 'package:flutter_recruitment_task/extensions/list_ext.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/models/movie_details.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';
import 'package:injectable/injectable.dart';

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
