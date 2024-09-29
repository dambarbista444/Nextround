import 'package:next_round/Common Components/learner_type.dart';

class LearningTopics {
  String title;
  List<LearningDetail> learningDetails;
  // List<LearningDetail> intermediateDetails;
  // List<LearningDetail> advanceDetails;

  LearningTopics({ required this.title, required this.learningDetails});
}

class LearningDetail {
  LearnerType learnerType;
  String question;
  String answer;
  String example;

  LearningDetail({required this.learnerType, required this.question, required this.answer, required this.example});
}

