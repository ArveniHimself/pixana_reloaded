import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'rating_page_event.dart';
part 'rating_page_state.dart';

class RatingPageBloc extends Bloc<RatingPageEvent, RatingPageState> {
  RatingPageBloc() : super(RatingViewState()) {
    on<RatingPageEvent>((event, emit) {
      if (event is SwitchToRating) {
        emit(RatingViewState());
      } else if (event is SwitchToComment) {
        emit(CommentViewState());
      }
    });
  }
}
