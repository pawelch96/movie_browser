import 'package:flutter/material.dart';

class MovieDetailWidget extends StatelessWidget {
  const MovieDetailWidget({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: 8.0),
        Text(
          content,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
