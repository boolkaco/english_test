import 'dart:async';

import 'package:english_test/consts/sentences.dart';
import 'package:english_test/models/sentence_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  Timer? _timer;

  AppCubit()
      : super(AppState(
          sentences: Sentences.list,
          remainingTime: const Duration(minutes: 30),
        )) {
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final seconds = state.remainingTime.inSeconds - 1;
      if (seconds < 0) {
        timer.cancel();
      } else {
        emit(state.copyWith(remainingTime: Duration(seconds: seconds)));
      }
    });
  }

  void pauseTimer() {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
      emit(state.copyWith(isPaused: true));
    }
  }

  void resumeTimer() {
    if (state.isPaused) {
      _startTimer();
      emit(state.copyWith(isPaused: false));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  void setNextStep(bool isCorrect) {
    int step = 0;
    int score = state.score;
    bool isComplete = false;
    if ((state.currentStep + 1) == state.sentences.length) {
      isComplete = true;
    } else {
      step = state.currentStep + 1;
    }
    emit(state.copyWith(
      currentStep: step,
      score: isCorrect ? ++score : score,
      isComplete: isComplete,
    ));
  }
}
