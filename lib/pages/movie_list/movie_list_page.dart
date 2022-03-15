import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/bloc/movies_bloc/movies_bloc.dart';
import 'package:flutter_recruitment_task/bloc/search/search_bloc.dart';
import 'package:flutter_recruitment_task/generated/l10n.dart';
import 'package:flutter_recruitment_task/pages/movie_list/widgets/movies_list.dart';
import 'package:flutter_recruitment_task/pages/movie_list/widgets/search_box.dart';
import 'package:flutter_recruitment_task/pages/shared/error_widget.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<SearchBloc>(
            create: (context) => SearchBloc(),
          ),
          BlocProvider<MoviesBloc>(
            create: (context) => MoviesBloc(),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).appTitle),
          ),
          body: Column(
            children: <Widget>[
              BlocConsumer<SearchBloc, SearchState>(
                listener: (context, state) {
                  if (state is Submitted) {
                    context.read<MoviesBloc>().add(
                          Search(state.query),
                        );
                  }
                },
                builder: (context, state) => SearchBox(
                  onSubmitted: (text) => context.read<SearchBloc>().add(
                        Submit(text),
                      ),
                ),
              ),
              Expanded(
                child: BlocBuilder<MoviesBloc, MoviesState>(
                  builder: (context, state) => state.when(
                    initial: () => const SizedBox(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    moviesListFetched: (moviesList) => MoviesList(
                      moviesList: moviesList,
                    ),
                    error: () => const ErrorGenericWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
