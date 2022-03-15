# Flutter Movie Browser

This app allows users to browse movie database and look for some interesting financial statistics. It uses The Movie Database API as a source of data about movies, its documentation is available [here](https://developers.themoviedb.org/3/getting-started/introduction).

## App content

App allows user to search movies in The Movie Database. It sorts results descending by average vote rating. Then it fetches movie details and shows its budget and revenue. Also if a profit from the movie is higher than $1,000,000 and it is Sunday, the app tells that the movie should be watched today.

## Requirements

To run the app, it is neccessary to provide API key, which can be obtained by registering an account [here](https://www.themoviedb.org/) and requesting for the API key.

To regenerate JSON models and freezed files, run:

```
flutter pub run build_runner build --delete-conflicting-outputs
```
