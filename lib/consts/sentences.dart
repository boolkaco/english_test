import 'package:english_test/models/sentence_model.dart';

class Sentences {
  static List<SentenceModel> list = [
    SentenceModel(
      text: 'What did you buy for Rachel\'s birthday party?',
      hint: 'A beautiful pink dress.',
      correctAnswer: 'What',
      answers: ['What', 'Why', 'Where', 'Who'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      text: 'Where did you spend your vacation?',
      hint: 'At the beach.',
      correctAnswer: 'Where',
      answers: ['How', 'Where', 'Are', 'Who'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      text: 'How do you like your coffee?',
      hint: 'Black and strong.',
      correctAnswer: 'do',
      answers: ['do', 'did', 'does', 'are'],
      missingWordIndex: 1,
    ),
    SentenceModel(
      text: 'Who was your childhood hero?',
      hint: 'Superman.',
      correctAnswer: 'your',
      answers: ['any', 'some', 'do', 'your'],
      missingWordIndex: 2,
    ),
    SentenceModel(
      text: 'What is your favorite book?',
      hint: '1984 by Orwell.',
      correctAnswer: 'is',
      answers: ['your', 'are', 'is', 'do'],
      missingWordIndex: 1,
    ),
    SentenceModel(
      text: 'When is your day off?',
      hint: 'On Sundays.',
      correctAnswer: 'When',
      answers: ['What', 'Why', 'Where', 'When'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      text: 'Why are you studying English?',
      hint: 'For work.',
      correctAnswer: 'Why',
      answers: ['What', 'Where', 'Why', 'Who'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      text: 'Which fruit do you like best?',
      hint: 'Apples.',
      correctAnswer: 'like',
      answers: ['eat', 'like', 'save', 'get'],
      missingWordIndex: 4,
    ),
    SentenceModel(
      text: 'Can you play any instruments?',
      hint: 'The guitar.',
      correctAnswer: 'Can',
      answers: ['How', 'Can', 'Which', 'Should'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      text: 'Do you prefer cats or dogs?',
      hint: 'Cats.',
      correctAnswer: 'Do',
      answers: ['Do', 'Does', 'Can', 'Shall'],
      missingWordIndex: 0,
    ),
  ];
}