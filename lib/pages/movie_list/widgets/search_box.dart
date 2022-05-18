import 'package:flutter/material.dart';
import 'package:movie_browser/generated/l10n.dart';

class SearchBox extends StatelessWidget {
  final void Function(String)? onSubmitted;

  const SearchBox({
    Key? key,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border(
            bottom: BorderSide(color: Colors.black.withOpacity(0.1)),
          ),
        ),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          textInputAction: TextInputAction.search,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: S.of(context).searchHint,
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
          cursorColor: Colors.white,
          onSubmitted: onSubmitted,
        ),
      );
}
