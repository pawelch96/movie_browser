import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:movie_browser/injection/injection.dart';
import 'package:movie_browser/models/movie.dart';
import 'package:movie_browser/repositories/movie_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_bloc.freezed.dart';
part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  late final MovieRepository repository;
  MoviesBloc() : super(MoviesState.initial()) {
    repository = getIt.get<MovieRepository>();
    on<MoviesEvent>(
      (event, emit) => event.when(
        search: (query) => _search(query, emit),
      ),
    );
  }

  Future<void> _search(String query, Emitter emit) async {
    emit(
      MoviesState.loading(),
    );

    final result = await repository.searchMovies(query);

    emit(
      result.fold(
        (error) => MoviesState.error(),
        (success) => MoviesState.moviesListFetched(
          success,
        ),
      ),
    );
  }
}
