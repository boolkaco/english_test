import 'package:english_test/models/sentence_model.dart';

class Sentences {
  static List<SentenceModel> list = [
    SentenceModel(
      sentence: 'What did you buy for Rachel\'s birthday party?',
      hint: 'A beautiful pink dress.',
      answers: ['What', 'Why', 'Where', 'Who'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      sentence: 'Where did you spend your vacation?',
      hint: 'At the beach.',
      answers: ['How', 'Where', 'Are', 'Who'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      sentence: 'How do you like your coffee?',
      hint: 'Black and strong.',
      answers: ['do', 'did', 'does', 'are'],
      missingWordIndex: 1,
    ),
    SentenceModel(
      sentence: 'Who was your childhood hero?',
      hint: 'Superman.',
      answers: ['any', 'some', 'do', 'your'],
      missingWordIndex: 2,
    ),
    SentenceModel(
      sentence: 'What is your favorite book?',
      hint: '1984 by Orwell.',
      answers: ['your', 'are', 'is', 'do'],
      missingWordIndex: 1,
    ),
    SentenceModel(
      sentence: 'When is your day off?',
      hint: 'On Sundays.',
      answers: ['What', 'Why', 'Where', 'Who'],
      missingWordIndex: 1,
    ),
    SentenceModel(
      sentence: 'Why are you studying English?',
      hint: 'For work.',
      answers: ['What', 'Where', 'Why', 'Who'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      sentence: 'Which fruit do you like best?',
      hint: 'Apples.',
      answers: ['eat', 'like', 'save', 'get'],
      missingWordIndex: 5,
    ),
    SentenceModel(
      sentence: 'Can you play any instruments?',
      hint: 'The guitar.',
      answers: ['How', 'Can', 'Which', 'Should'],
      missingWordIndex: 0,
    ),
    SentenceModel(
      sentence: 'Do you prefer cats or dogs?',
      hint: 'Cats.',
      answers: ['Do', 'Does', 'Can', 'Shall'],
      missingWordIndex: 0,
    ),
  ];
}