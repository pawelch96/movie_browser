import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/bloc/movie_details_bloc/movie_details_bloc.dart';
import 'package:flutter_recruitment_task/generated/l10n.dart';
import 'package:flutter_recruitment_task/models/movie.dart';
import 'package:flutter_recruitment_task/pages/movie_details/movie_details_page.dart';
import 'package:flutter_recruitment_task/pages/movie_list/widgets/movie_card.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({
    Key? key,
    required this.moviesList,
  }) : super(key: key);

  final List<Movie> moviesList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Container(
        height: 1.0,
        color: Colors.grey.shade300,
      ),
      itemBuilder: (context, index) {
        final Movie _movie = moviesList[index];
        return MovieCard(
          title: _movie.title,
          rating: S.of(context).percentRating(
                (_movie.voteAverage * 10).toInt(),
              ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return BlocProvider<MovieDetailsBloc>(
                  create: (context) => MovieDetailsBloc()
                    ..add(
                      MovieDetailsEvent.getMovieDetails(
                        _movie.id,
                      ),
                    ),
                  child: const MovieDetailsPage(),
                );
              },
            ),
          ),
        );
      },
      itemCount: moviesList.length,
    );
  }
}
