class SentenceModel {
  final String text;
  final String hint;
  final String correctAnswer;
  final List<String> answers;
  final int missingWordIndex;

  SentenceModel({
    required this.text,
    required this.hint,
    required this.correctAnswer,
    required this.answers,
    required this.missingWordIndex,
  });

  SentenceModel copyWith({
    String? text,
    String? hint,
    String? correctAnswer,
    List<String>? answers,
    int? missingWordIndex,
  }) {
    return SentenceModel(
      text: text ?? this.text,
      hint: hint ?? this.hint,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      answers: answers ?? this.answers,
      missingWordIndex: missingWordIndex ?? this.missingWordIndex,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'hint': hint,
      'correctAnswer': correctAnswer,
      'answers': answers,
      'missingWordIndex': missingWordIndex,
    };
  }

  factory SentenceModel.fromJson(Map<String, dynamic> json) {
    return SentenceModel(
      text: json['text'],
      hint: json['hint'],
      correctAnswer: json['correctAnswer'],
      answers: json['answers'],
      missingWordIndex: json['missingWordIndex'],
    );
  }
}
