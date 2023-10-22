part of 'rating_page_bloc.dart';

@immutable
sealed class RatingPageEvent {}

class SwitchToComment extends RatingPageEvent {}

class SwitchToRating extends RatingPageEvent {}

@immutable
sealed class ThemeModeEvent {}

class ToggleThemeMode extends ThemeModeEvent {}
