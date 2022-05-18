import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_browser/bloc/movies_bloc/movies_bloc.dart';
import 'package:movie_browser/models/movie.dart';
import 'package:movie_browser/repositories/movie_repository.dart';
import 'package:movie_browser/services/api_service.dart';

class MockApiService extends Mock implements ApiServiceImpl {}

class MockMovieRepository extends Mock implements MovieRepositoryImpl {}

class MockMovie extends Mock implements Movie {}

void main() {
  group('MoviesBloc', () {
    late MovieRepositoryImpl movieRepository;
    late ApiServiceImpl apiService;
    final moviesList = [MockMovie()];

    setUpAll(() {
      movieRepository = MockMovieRepository();
      apiService = MockApiService();

      final di = GetIt.instance;
      di.registerLazySingleton<ApiService>(() => apiService);
      di.registerLazySingleton<MovieRepository>(() => movieRepository);
    });

    test('initial state is correct', () {
      final moviesBloc = MoviesBloc();
      expect(moviesBloc.state, MoviesState.initial());
    });

    group('search', () {
      blocTest<MoviesBloc, MoviesState>(
          'emits [loading, error] when searchMovies throws Exception',
          setUp: () {
            when(() => movieRepository.searchMovies(any()))
                .thenAnswer((_) async => left(Exception()));
          },
          build: () => MoviesBloc(),
          act: (bloc) => bloc.add(
                const Search('query'),
              ),
          expect: () {
            return <MoviesState>[MoviesState.loading(), MoviesState.error()];
          });

      blocTest<MoviesBloc, MoviesState>(
          'emits [loading, moviesListFetched] when searchMovies returns success',
          setUp: () {
            when(() => movieRepository.searchMovies(any()))
                .thenAnswer((_) async => right(moviesList));
          },
          build: () => MoviesBloc(),
          act: (bloc) => bloc.add(
                const Search('query'),
              ),
          expect: () {
            return <MoviesState>[
              MoviesState.loading(),
              MoviesState.moviesListFetched(moviesList)
            ];
          });
    });
  });
}
