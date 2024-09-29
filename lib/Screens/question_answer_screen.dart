
import 'package:next_round/Learning%20Topics/ios_topics.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../Model/learning_topics.dart';
import 'package:next_round/Common Components/common_outline_button.dart';
import 'package:next_round/Common Components/left_aligned_text.dart';
import 'all_questions_screen.dart';
import 'package:next_round/Common Components/learner_type.dart';



class QuestionAnswerScreen extends StatefulWidget {
  final String title;
  final List<LearningDetail> allDetails;

  const QuestionAnswerScreen({ super.key, required this.title, required this.allDetails });

  @override
  State<QuestionAnswerScreen> createState() => _QuestionAnswerScreenState();
}

class _QuestionAnswerScreenState extends State<QuestionAnswerScreen> {
  LearnerType learnerType = LearnerType.beginner;

  // bool isCategorySelected = false;
  // bool isBeginnerSelected = true;
  // bool isIntermediateSelected = false;
  // bool isAdvancedSelected = false;

  final pageController = PageController(
    initialPage: 0,
  );

  int _currentPage = 1;

  List<LearningDetail> filteredDetails = [];

  @override
  void initState() {
    super.initState();
    // Filter beginner details by default when the screen loads
    filterDetailsByLearnerType(LearnerType.beginner);
  }

  // Function to filter the learning details based on learner type
  void filterDetailsByLearnerType(LearnerType type) {
    setState(() {
      learnerType = type;
      filteredDetails = widget.allDetails
          .where((detail) => detail.learnerType == type)
          .toList();

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (pageController.hasClients) {
          pageController.jumpToPage(0);  // Reset to the first page after filtering
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 25,
        title: Text(widget.title),

        actions: [
          Transform.scale(
            scale: 1.5,
            child: IconButton(
                onPressed: () {
                  print("pressed");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllQuestionsListScreen(allQuestions: widget.allDetails,
                        onQuestionTap: (selectedIndex) {
                        Navigator.pop(context);
                        setState(() {
                          filteredDetails = widget.allDetails;
                          learnerType = widget.allDetails[selectedIndex].learnerType;
                          pageController.jumpToPage(selectedIndex);
                        });
                        },
                      ),
                      ),
                  );
                }, icon: const Icon(Icons.list),),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Beginner
                  CommonOutlineButton(onTap: () {
                    setState(() {
                      learnerType = LearnerType.beginner;
                      filterDetailsByLearnerType(learnerType);
                    });
                  }, buttonTitle: "Beginner",
                      backgroundColor: learnerType == LearnerType.beginner ? Colors.black87 : Colors.transparent,
                      textStyle: TextStyle(color: learnerType == LearnerType.beginner ? Colors.white : Colors.black, fontSize: 16),
                      buttonHeight: 30.0),

                  // Intermediate
                  CommonOutlineButton(onTap: () {
                    setState(() {
                      learnerType = LearnerType.intermediate;
                      filterDetailsByLearnerType(learnerType);
                    });
                  }, buttonTitle: "Intermediate",
                      backgroundColor: learnerType == LearnerType.intermediate ? Colors.black : Colors.transparent,
                      textStyle: TextStyle(color: learnerType == LearnerType.intermediate ? Colors.white : Colors.black, fontSize: 16.0),
                      buttonHeight: 30.0),

                  // Advanced
                  CommonOutlineButton(onTap: () {
                    setState(() {
                      learnerType = LearnerType.advanced;
                      filterDetailsByLearnerType(learnerType);
                    });
                  }, buttonTitle: "Advanced",
                      backgroundColor: learnerType == LearnerType.advanced ? Colors.black : Colors.transparent,
                      textStyle: TextStyle(color: learnerType == LearnerType.advanced ? Colors.white : Colors.black, fontSize: 16.0),
                      buttonHeight: 30.0),
                ],
              ),
            ),
          ),

          Expanded(
            child: QuestionAndAnswerPageView(details: filteredDetails, pageController: pageController,
              onPageChanged: (currentPage) {
                setState(() {
                  // it will highlight/show selected to category buttons when pages swipe.
                  learnerType = filteredDetails[currentPage].learnerType;
                  _currentPage = currentPage + 1;
                });
            },
            ),
          ),

          /// favorite and counter wider goes here
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0, left: 30, right: 15),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Row(
                   children: [
                     Text("$_currentPage",style: const TextStyle(fontSize: 14.0),),
                     Text(" / ${filteredDetails.length} Questions", style: const TextStyle(color: Colors.black54, fontSize: 14.0),)
                   ],
                 ),
                const Spacer(),
                IconButton(onPressed: () {
                  // save to favorite
                }, icon: const Icon(Icons.bookmark_border)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// End of manin class

class QuestionAndAnswerPageView extends StatelessWidget {
  final List<LearningDetail> details;
  final PageController pageController;
  final Function(int) onPageChanged;

  const QuestionAndAnswerPageView({super.key, required this.details, required this.pageController, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
      pageSnapping: true,
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: details.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        // give padding either to whole colum or just questions and anser text and example
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LeftAlignedText(text: details[index].question, textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600), edgeInsets: const EdgeInsets.only(top: 10.0)),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      LeftAlignedText(text: details[index].answer, textStyle: const TextStyle(fontSize: 16), edgeInsets: const EdgeInsets.only(top: 10.0)),

                      const LeftAlignedText(text: "Example:", textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600), edgeInsets: EdgeInsets.only(top: 10.0)),

                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black54,
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LeftAlignedText(text: details[index].example, textStyle: const TextStyle(fontSize: 16, color: Colors.white), edgeInsets: const EdgeInsets.only(top: 10.0)),
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
