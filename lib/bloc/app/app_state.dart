part of 'app_cubit.dart';

class AppState extends Equatable {
  final int currentStep;
  final int score;
  final Duration remainingTime;
  final bool isComplete;
  final List<SentenceModel> sentences;
  final bool isPaused;

  const AppState({
    this.currentStep = 0,
    this.score = 0,
    this.remainingTime = const Duration(minutes: 30),
    this.isComplete = false,
    required this.sentences,
    this.isPaused = false,
  });

  @override
  List<Object?> get props => [
    currentStep,
    score,
    remainingTime,
    isComplete,
    sentences,
    isPaused,
  ];

  AppState copyWith({
    int? currentStep,
    int? score,
    Duration? remainingTime,
    bool? isComplete,
    List<SentenceModel>? sentences,
    bool? isPaused,
  }) {
    return AppState(
      currentStep: currentStep ?? this.currentStep,
      score: score ?? this.score,
      remainingTime: remainingTime ?? this.remainingTime,
      isComplete: isComplete ?? this.isComplete,
      sentences: sentences ?? this.sentences,
      isPaused: isPaused ?? this.isPaused,
    );
  }
}
