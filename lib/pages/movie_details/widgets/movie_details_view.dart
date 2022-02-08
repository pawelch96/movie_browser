import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/generated/l10n.dart';
import 'package:flutter_recruitment_task/models/movie_details.dart';
import 'package:flutter_recruitment_task/pages/movie_details/widgets/move_detail.dart';
import 'package:flutter_recruitment_task/utils.dart';

class MovieDetailsView extends StatelessWidget {
  final MovieDetails details;
  final bool shouldItBeWatchedToday;
  const MovieDetailsView({
    Key? key,
    required this.details,
    required this.shouldItBeWatchedToday,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MovieDetailWidget(
              title: S.of(context).budget,
              content: formatToCurrency(details.budget),
            ),
            const Divider(),
            MovieDetailWidget(
              title: S.of(context).revenue,
              content: formatToCurrency(details.revenue),
            ),
            const Divider(),
            MovieDetailWidget(
              title: S.of(context).shouldIWatchedItToday,
              content:
                  shouldItBeWatchedToday ? S.of(context).yes : S.of(context).no,
            ),
            const Divider(),
          ],
        ),
      );
}
