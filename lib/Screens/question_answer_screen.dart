
import 'dart:ui';

import 'package:next_round/Learning%20Topics/ios_topics.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../Model/learning_topics.dart';
import 'package:next_round/Common Components/common_outline_button.dart';
import 'package:next_round/Common Components/left_aligned_text.dart';
import 'all_questions_screen.dart';
import 'package:next_round/Common Components/learner_type.dart';
import 'package:next_round/Storage/bookmark_service.dart';
import 'package:next_round/Model/bookmark.dart';
import 'package:next_round/Common Components/constants.dart';




class QuestionAnswerScreen extends StatefulWidget {
  final String title;
  final List<LearningDetail> allDetails;

  const QuestionAnswerScreen({ super.key, required this.title, required this.allDetails });

  @override
  State<QuestionAnswerScreen> createState() => _QuestionAnswerScreenState();
}

class _QuestionAnswerScreenState extends State<QuestionAnswerScreen> {
  final BookmarkService bookmarkService = BookmarkService();

  bool isBookmarked = false;
  bool isBlurred = false;

  LearnerType learnerType = LearnerType.beginner;

  final pageController = PageController(initialPage: 0);

  int _currentPage = 1;

  List<LearningDetail> filteredDetails = [];


  @override
  void initState() {
    super.initState();
    // Filter beginner details by default when the screen loads
    filterDetailsByLearnerType(LearnerType.beginner);
    _checkIfBookmarked();
  }

  // Toggle blur effect
  void _toggleBlur(bool value) {
    setState(() {
      isBlurred = value;  // Update the blur state
    });
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

  // Check if the current question is bookmarked
  void _checkIfBookmarked() async {
    if (filteredDetails.isNotEmpty) {
      final currentQuestionId = filteredDetails[_currentPage - 1].question;
      final isAlreadyBookmarked = await bookmarkService.isBookmarked(currentQuestionId);
      setState(() {
        isBookmarked = isAlreadyBookmarked;
      });
    }
  }

  // Toggle bookmark status for the current question
  void _toggleBookmark() async {
    final currentQuestion = filteredDetails[_currentPage - 1];
    if (isBookmarked) {
      // Remove bookmark
      await bookmarkService.removeBookmark(currentQuestion.question);
    } else {
      // Save bookmark
      await bookmarkService.saveBookmark(
        Bookmark(
          question: currentQuestion.question,
          answer: currentQuestion.answer,
          example: currentQuestion.example
        ),
      );
    }
    setState(() {
      isBookmarked = !isBookmarked;  // Toggle the bookmark state
    });

    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(content: Text(isBookmarked ? "Bookmarked!" : "Bookmark removed!")),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 25,
        title: Text(widget.title),

        actions: [
          // Toggle switch to control blur
          Transform.scale(
            scale: 0.7,
            child: Switch(
              activeColor: Colors.black87,
              value: isBlurred,
              onChanged: _toggleBlur, // Toggle blur effect when the switch changes
            ),
          ),

          Transform.scale(
            scale: 1.6,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllQuestionsListScreen(allQuestions: widget.allDetails,
                        onQuestionTap: (selectedIndex) {
                        Navigator.pop(context);
                        setState(() {
                          filteredDetails = widget.allDetails;
                          learnerType = widget.allDetails[selectedIndex].learnerType;
                          pageController.jumpToPage(selectedIndex);
                          _checkIfBookmarked();
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
                  _checkIfBookmarked();
                });
            }, isBlurred: isBlurred,
            ),
          ),

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
                IconButton(onPressed: _toggleBookmark,
                  icon: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                  color: isBookmarked ? Colors.black : Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class QuestionAndAnswerPageView extends StatelessWidget {
  final List<LearningDetail> details;
  final PageController pageController;
  final Function(int) onPageChanged;
  final bool isBlurred;


  const QuestionAndAnswerPageView({super.key, required this.details, required this.pageController, required this.onPageChanged, required this.isBlurred});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
      pageSnapping: true,
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: details.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
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
                      //LeftAlignedText(text: details[index].answer, textStyle: const TextStyle(fontSize: 16), edgeInsets: const EdgeInsets.only(top: 10.0)),
                      // Blur the answer and example if isBlurred is true
                      if (isBlurred)
                        ClipRect(
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
                            child: LeftAlignedText(
                              text: details[index].answer,
                              textStyle: const TextStyle(fontSize: 16),
                              edgeInsets: const EdgeInsets.only(top: 10.0),
                            ),
                          ),
                        )
                      else
                        LeftAlignedText(
                          text: details[index].answer,
                          textStyle: const TextStyle(fontSize: 16),
                          edgeInsets: const EdgeInsets.only(top: 10.0),
                        ),


                      const LeftAlignedText(text: "Example:", textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600), edgeInsets: EdgeInsets.only(top: 10.0)),

                      // Padding(
                      //   padding: const EdgeInsets.only(top: 5.0),
                      //   child: Container(
                      //       decoration: BoxDecoration(
                      //           color: Colors.black54,
                      //           borderRadius: BorderRadius.circular(5.0)
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: LeftAlignedText(text: details[index].example, textStyle: const TextStyle(fontSize: 16, color: Colors.white), edgeInsets: const EdgeInsets.only(top: 10.0)),
                      //       )
                      //   ),
                      // )

                      if (isBlurred)
                        ClipRect(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: LeftAlignedText(
                                    text: details[index].example,
                                    textStyle: const TextStyle(fontSize: 16, color: Colors.white),
                                    edgeInsets: const EdgeInsets.only(top: 10.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      else
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LeftAlignedText(
                                text: details[index].example,
                                textStyle: const TextStyle(fontSize: 16, color: Colors.white),
                                edgeInsets: const EdgeInsets.only(top: 10.0),
                              ),
                            ),
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
