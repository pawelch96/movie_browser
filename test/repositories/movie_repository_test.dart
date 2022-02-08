import 'package:dartz/dartz.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/models/movie_details.dart';
import 'package:flutter_recruitment_task/repositories/movie_repository.dart';
import 'package:flutter_recruitment_task/services/api_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockApiService extends Mock implements ApiServiceImpl {}

class MockMovieDetails extends Mock implements MovieDetails {}

class MockMovie extends Mock implements Movie {}

void main() {
  group('MovieRepository', () {
    late ApiServiceImpl apiService;
    late MovieRepositoryImpl movieRepository;

    setUp(() {
      apiService = MockApiService();
      movieRepository = MovieRepositoryImpl(apiService);
    });

    group('searchMovies', () {
      const query = 'potter';
      test('calls searchMovies with correct query', () async {
        try {
          await movieRepository.searchMovies(query);
        } catch (_) {}
        verify(() => apiService.searchMovies(query)).called(1);
      });

      test('returns Exception when searchMovies fails', () async {
        final exception = Exception();
        when(() => apiService.searchMovies(any())).thenThrow(exception);
        final Either<Exception, List<Movie>> result =
            await movieRepository.searchMovies(query);

        result.fold(
            (l) => expect(l, equals(exception)), (r) => fail('test failed'));
      });

      test('returns List<Movie> on success', () async {
        final movieList = [MockMovie()];

        when(() => movieList[0].id).thenReturn(673);
        when(() => movieList[0].title).thenReturn('title');
        when(() => movieList[0].voteAverage).thenReturn(7);
        when(() => apiService.searchMovies(any()))
            .thenAnswer((_) async => movieList);

        final Either<Exception, List<Movie>> actual =
            await movieRepository.searchMovies(query);

        actual.fold(
            (l) => fail('test failed'), (r) => expect(r, equals(movieList)));
      });
    });

    group('getMovieDetails', () {
      const id = 673;
      test('calls getMovieDetails with correct query', () async {
        try {
          await movieRepository.getMovieDetails(id);
        } catch (_) {}
        verify(() => apiService.getMovieDetails(id)).called(1);
      });

      test('returns Exception when getMovieDetails fails', () async {
        final exception = Exception();
        when(() => apiService.getMovieDetails(any())).thenThrow(exception);
        final Either<Exception, MovieDetails> result =
            await movieRepository.getMovieDetails(id);

        result.fold(
            (l) => expect(l, equals(exception)), (r) => fail('test failed'));
      });

      test('returns MovieDetails on success', () async {
        final movieDetails = MockMovieDetails();

        when(() => movieDetails.budget).thenReturn(1000);
        when(() => movieDetails.title).thenReturn('title');
        when(() => movieDetails.revenue).thenReturn(100);
        when(() => apiService.getMovieDetails(any()))
            .thenAnswer((_) async => movieDetails);

        final Either<Exception, MovieDetails> actual =
            await movieRepository.getMovieDetails(id);

        actual.fold(
            (l) => fail('test failed'), (r) => expect(r, equals(movieDetails)));
      });
    });
  });
}
