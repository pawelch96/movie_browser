import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/bloc/movie_details_bloc/movie_details_bloc.dart';
import 'package:flutter_recruitment_task/pages/movie_details/widgets/movie_details_view.dart';
import 'package:flutter_recruitment_task/pages/shared/error_widget.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: state is MovieDetailsFetched
                ? Text(
                    state.movieDetails.title,
                  )
                : null,
          ),
          body: state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            movieDetailsFetched: (movieDetails) => MovieDetailsView(
              details: movieDetails,
              shouldItBeWatchedToday: state.shouldItBeWatchedToday,
            ),
            error: () => const ErrorGenericWidget(),
          ),
        ),
      );
}
