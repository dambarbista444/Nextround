import 'package:next_round/Screens/question_answer_screen.dart';
import 'package:flutter/material.dart';
import '../Model/learning_topics.dart';
import '../Learning Topics/android_topics.dart';
import 'package:next_round/Learning%20Topics/ios_topics.dart';

class MainLandingScreen extends StatefulWidget {
  const MainLandingScreen({super.key});

  @override
  State<MainLandingScreen> createState() => _MainLandingScreenState();
}

class _MainLandingScreenState extends State<MainLandingScreen> {
  final List<LearningTopics> topics = [
    LearningTopics(title: "iOS", learningDetails: IosTopics.learningDetails),
    LearningTopics(title: "Android", learningDetails: AndroidTopics.details),
    // LearningTopics(title: "Flutter", topics: []),
    // LearningTopics(title: "React Native", topics: [])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Learning"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionAnswerScreen(
                          title: topics[index].title,
                          allDetails: topics[index].learningDetails,
                        ))
                );
              });

            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text("{$index}"),
                  Text(topics[index].title)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
