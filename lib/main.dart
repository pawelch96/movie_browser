import 'package:flutter/material.dart';
import 'package:movie_browser/app/movie_app.dart';
import 'package:movie_browser/injection/injection.dart';

void main() {
  configureInjection();
  runApp(const MovieApp());
}
