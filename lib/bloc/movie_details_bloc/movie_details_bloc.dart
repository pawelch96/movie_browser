import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/injection/injection.dart';
import 'package:flutter_recruitment_task/models/movie_details.dart';
import 'package:flutter_recruitment_task/repositories/movie_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_bloc.freezed.dart';
part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  late final MovieRepository _repository;

  MovieDetailsBloc() : super(const MovieDetailsState.loading()) {
    _repository = getIt.get<MovieRepository>();
    on<MovieDetailsEvent>(
      (event, emit) => event.when(
        getMovieDetails: (id) => _getMovieDetails(
          id,
          emit,
        ),
      ),
    );
  }

  Future<void> _getMovieDetails(int id, Emitter<MovieDetailsState> emit) async {
    emit(
      const MovieDetailsState.loading(),
    );

    final result = await _repository.getMovieDetails(id);

    emit(
      result.fold(
        (error) => const MovieDetailsState.error(),
        (success) => MovieDetailsState.movieDetailsFetched(
          success,
        ),
      ),
    );
  }
}
