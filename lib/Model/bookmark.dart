
class Bookmark {
  final String question;
  final String answer;
  final String example;

  Bookmark({required this.question, required this.answer, required this.example});

  // Convert Bookmark object to JSON for local storage
  Map<String, dynamic> toJson() => {
    'question': question,
    'answer': answer,
    'example': example
  };

  // Convert JSON to Bookmark object when retrieving from local storage
  factory Bookmark.fromJson(Map<String, dynamic> json) {
    return Bookmark(
      question: json['question'] ?? '',
      answer: json['answer'] ?? '',
      example: json['example'] ?? '',
    );
  }
}