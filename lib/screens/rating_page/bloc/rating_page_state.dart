part of 'rating_page_bloc.dart';

@immutable
sealed class RatingPageState {}

final class RatingViewState extends RatingPageState {}

final class CommentViewState extends RatingPageState {}

// @immutable
// sealed class ThemeModeState {}

// final class DarkModeActive extends ThemeModeState {}

// final class LightModeActive extends ThemeModeState {}
