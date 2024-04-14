class SentenceModel {
  final String sentence;
  final String hint;
  final List<String> answers;
  final int missingWordIndex;

  SentenceModel({
    required this.sentence,
    required this.hint,
    required this.answers,
    required this.missingWordIndex,
  });

  SentenceModel copyWith({
    String? sentence,
    String? hint,
    List<String>? answers,
    int? missingWordIndex,
  }) {
    return SentenceModel(
      sentence: sentence ?? this.sentence,
      hint: hint ?? this.hint,
      answers: answers ?? this.answers,
      missingWordIndex: missingWordIndex ?? this.missingWordIndex,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sentence': sentence,
      'hint': hint,
      'answers': answers,
      'missingWordIndex': missingWordIndex,
    };
  }

  factory SentenceModel.fromJson(Map<String, dynamic> json) {
    return SentenceModel(
      sentence: json['sentence'],
      hint: json['hint'],
      answers: json['answers'],
      missingWordIndex: json['missingWordIndex'],
    );
  }
}
