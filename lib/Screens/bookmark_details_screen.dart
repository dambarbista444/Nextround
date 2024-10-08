import 'package:flutter/material.dart';
import '../Model/learning_topics.dart';
import 'package:next_round/Common Components/left_aligned_text.dart';
import 'package:next_round/Common Components/learner_type.dart';
import 'package:next_round/Storage/bookmark_service.dart';
import 'package:next_round/Model/bookmark.dart';

class BookmarkDetailsScreen extends StatefulWidget {
  final List<Bookmark> bookmarks;
  final int initialIndex;

  const BookmarkDetailsScreen(
      {super.key, required this.bookmarks, required this.initialIndex});

  @override
  State<BookmarkDetailsScreen> createState() => _BookmarkDetailsScreenState();
}

class _BookmarkDetailsScreenState extends State<BookmarkDetailsScreen> {
  final BookmarkService bookmarkService = BookmarkService();
  bool isBookmarked = false;
  late PageController pageController;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.initialIndex);
    _checkIfBookmarked(widget.initialIndex);
  }

  // Check if the current question is bookmarked
  void _checkIfBookmarked(int index) async {
    final isAlreadyBookmarked =
        await bookmarkService.isBookmarked(widget.bookmarks[index].question);
    setState(() {
      isBookmarked = isAlreadyBookmarked;
    });
  }

  // Toggle bookmark status for the current question
  void _toggleBookmark(int index) async {
    final currentBookmark = widget.bookmarks[index];
    if (isBookmarked) {
      // Remove bookmark
      await bookmarkService.removeBookmark(currentBookmark.question);
    } else {
      // Save bookmark
      await bookmarkService.saveBookmark(currentBookmark);
    }
    setState(() {
      isBookmarked = !isBookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        centerTitle: false,
        title: const Text("Bookmark"),
      ),
      body: Column(
        children: [
          // PageView for swiping between bookmarks
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: widget.bookmarks.length,
              onPageChanged: (currentPage) {
                // Update bookmark state when swiping to a new page
                setState(() {
                  _currentPage = currentPage + 1;
                });
                _checkIfBookmarked(currentPage);
              },
              itemBuilder: (context, index) {
                final bookmark = widget.bookmarks[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      LeftAlignedText(
                        text: bookmark.question,
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                        edgeInsets: const EdgeInsets.only(top: 10.0),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              LeftAlignedText(
                                text: bookmark.answer,
                                textStyle: const TextStyle(fontSize: 16),
                                edgeInsets: const EdgeInsets.only(top: 10.0),
                              ),
                              const LeftAlignedText(
                                text: "Example:",
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                                edgeInsets: EdgeInsets.only(top: 10.0),
                              ),
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
                                      text: bookmark.example,
                                      textStyle: const TextStyle(
                                          fontSize: 16, color: Colors.white),
                                      edgeInsets: const EdgeInsets.only(top: 10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Bookmark button
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 40.0, left: 30, right: 15),
          //   child: Row(
          //     children: [
          //       Text(
          //         "$_currentPage",
          //         style: const TextStyle(fontSize: 14.0),
          //       ),
          //       Text(
          //         " / ${widget.bookmarks.length} Questions",
          //         style: const TextStyle(color: Colors.black54, fontSize: 14.0),
          //       ),
          //       const Spacer(),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}