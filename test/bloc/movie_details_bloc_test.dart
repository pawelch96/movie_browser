import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_browser/bloc/movie_details_bloc/movie_details_bloc.dart';
import 'package:movie_browser/models/movie_details.dart';
import 'package:movie_browser/repositories/movie_repository.dart';
import 'package:movie_browser/services/api_service.dart';

class MockApiService extends Mock implements ApiServiceImpl {}

class MockMovieRepository extends Mock implements MovieRepositoryImpl {}

class MockMovieDetails extends Mock implements MovieDetails {}

void main() {
  group('MovieDetailsBloc', () {
    late MovieRepositoryImpl movieRepository;
    late ApiServiceImpl apiService;
    final movieDetails = MockMovieDetails();

    setUpAll(() {
      movieRepository = MockMovieRepository();
      apiService = MockApiService();

      final di = GetIt.instance;
      di.registerLazySingleton<ApiService>(() => apiService);
      di.registerLazySingleton<MovieRepository>(() => movieRepository);
    });

    test('initial state is correct', () {
      final movieDetailsBloc = MovieDetailsBloc();
      expect(movieDetailsBloc.state, const MovieDetailsState.loading());
    });

    group('getMovieDetails', () {
      blocTest<MovieDetailsBloc, MovieDetailsState>(
          'emits [loading, error] when getMovieDetails throws Exception',
          setUp: () {
            when(() => movieRepository.getMovieDetails(any()))
                .thenAnswer((_) async => left(Exception()));
          },
          build: () => MovieDetailsBloc(),
          act: (bloc) => bloc.add(
                const GetMovieDetails(1),
              ),
          expect: () => <MovieDetailsState>[
                const MovieDetailsState.loading(),
                const MovieDetailsState.error()
              ]);

      blocTest<MovieDetailsBloc, MovieDetailsState>(
          'emits [loading, movieDetailsFetched] when getMovieDetails returns success',
          setUp: () {
            when(() => movieRepository.getMovieDetails(any()))
                .thenAnswer((_) async => right(movieDetails));
          },
          build: () => MovieDetailsBloc(),
          act: (bloc) => bloc.add(
                const GetMovieDetails(1),
              ),
          expect: () {
            return <MovieDetailsState>[
              const MovieDetailsState.loading(),
              MovieDetailsState.movieDetailsFetched(movieDetails)
            ];
          });
    });
  });
}
