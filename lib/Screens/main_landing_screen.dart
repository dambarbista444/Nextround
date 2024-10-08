import 'package:next_round/Learning%20Topics/java_topics.dart';
import 'package:next_round/Learning%20Topics/machine_learning_topics.dart';
import 'package:next_round/Learning%20Topics/python_topics.dart';
import 'package:next_round/Learning%20Topics/web_development_topics.dart';
import 'package:next_round/Screens/question_answer_screen.dart';
import 'package:flutter/material.dart';
import '../Model/learning_topics.dart';
import 'package:next_round/Learning Topics/android_topics.dart';
import 'package:next_round/Learning Topics/flutter_topics.dart';
import 'package:next_round/Learning%20Topics/ios_topics.dart';
import 'package:next_round/Learning Topics/react_native_topics.dart';

class MainLandingScreen extends StatefulWidget {
  const MainLandingScreen({super.key});

  @override
  State<MainLandingScreen> createState() => _MainLandingScreenState();
}

class _MainLandingScreenState extends State<MainLandingScreen> {
  final List<LearningTopics> topics = [
    LearningTopics(title: "iOS",icon: "swift.png", learningDetails: IosTopics.learningDetails),
    LearningTopics(title: "Android", icon: "android.png", learningDetails: AndroidTopics.learningDetails),
    LearningTopics(title: "Flutter", icon: "flutter.png", learningDetails: FlutterTopics.learningDetails),
    LearningTopics(title: "React Native",icon: "react_native.png", learningDetails: ReactNativeTopics.learningDetails),
    LearningTopics(title: "Java",icon: "java.png", learningDetails: JavaTopics.learningDetails),
    LearningTopics(title: "Python",icon: "python.png", learningDetails: PythonTopics.learningDetails),
    LearningTopics(title: "Machine Learning",icon: "machine_learning.png", learningDetails: MachineLearningTopics.learningDetails),
    LearningTopics(title: "Web Frontend",icon: "web.png", learningDetails: WebDevelopmentTopics.learningDetails),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Learning"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
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
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(color: Colors.black54,
                    blurRadius: 4,
                    )
                  ],

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                           Image(
                            height: 80,
                              width: 80,
                              image: AssetImage("assets/${topics[index].icon}"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 50.0),
                      child: Row(
                        children: [
                          const Spacer(),
                          Text(topics[index].title,
                          style:  const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
