part of 'app_cubit.dart';

class AppState extends Equatable {
  final int score;

  const AppState({
    this.score = 0,
  });

  @override
  List<Object?> get props => [
    score,
  ];

  AppState copyWith({
    int? score,
  }) {
    return AppState(
      score: score ?? this.score,
    );
  }
}
