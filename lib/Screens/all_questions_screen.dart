import 'package:flutter/material.dart';
import 'package:next_round/Model/learning_topics.dart';
import 'package:next_round/Screens/question_answer_screen.dart';
import 'package:next_round/Learning%20Topics/ios_topics.dart';

class AllQuestionsListScreen extends StatelessWidget {
  final List<LearningDetail> allQuestions;
  final Function(int) onQuestionTap;

  const AllQuestionsListScreen(
      {super.key, required this.allQuestions, required this.onQuestionTap});

  // final List<LearningTopics> topics = [
  //   LearningTopics(title: "iOS",beginnerDetails: IosTopics.beginnersDetails, intermediateDetails: IosTopics.intermediateDetails, advanceDetails: IosTopics.advancedDetails ),
  //   //LearningTopics(title: "Android", topics: AndroidTopics.details),
  //   // LearningTopics(title: "Flutter", topics: []),
  //   // LearningTopics(title: "React Native", topics: [])
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 25,
        title: const Text("All"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "${index + 1}.",
                  style: const TextStyle(fontSize: 16),
                ),
              ),

              Expanded(
                child: ListTile(
                  title: Text(allQuestions[index].question),
                  onTap: () {
                    onQuestionTap(index);
                  },
                ),
              ),
            ],
          );
        },
        itemCount: allQuestions.length,
      ),
    );
  }
}
