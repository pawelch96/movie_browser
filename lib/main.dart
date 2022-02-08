import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/app/movie_app.dart';
import 'package:flutter_recruitment_task/injection/injection.dart';

void main() {
  configureInjection();
  runApp(const MovieApp());
}
