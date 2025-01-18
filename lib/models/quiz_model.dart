import 'dart:convert';

class QuizModel {
  List<Question> questions;

  QuizModel({required this.questions});

  factory QuizModel.fromJson(String str) =>
      QuizModel.fromMap(json.decode(str));

  factory QuizModel.fromMap(Map<String, dynamic> json) => QuizModel(
    questions: List<Question>.from(
        json["questions"].map((x) => Question.fromMap(x))),
  );
}

class Question {
  String description;
  List<Option> options;

  Question({
    required this.description,
    required this.options,
  });

  factory Question.fromMap(Map<String, dynamic> json) => Question(
    description: json["description"],
    options: List<Option>.from(json["options"].map((x) => Option.fromMap(x))),
  );
}

class Option {
  String description;
  bool isCorrect;

  Option({
    required this.description,
    required this.isCorrect,
  });

  factory Option.fromMap(Map<String, dynamic> json) => Option(
    description: json["description"],
    isCorrect: json["is_correct"],
  );
}
