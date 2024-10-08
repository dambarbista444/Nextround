import 'package:flutter/material.dart';
import 'package:next_round/Screens/bookmark_details_screen.dart';
import 'package:next_round/Storage/bookmark_service.dart';
import 'package:next_round/Model/bookmark.dart';

class BookmarkListScreen extends StatefulWidget {
  const BookmarkListScreen({super.key});

  @override
  BookmarkListScreenState createState() => BookmarkListScreenState();
}

class BookmarkListScreenState extends State<BookmarkListScreen> {
  final BookmarkService bookmarkService = BookmarkService();
  late Future<List<Bookmark>> futureBookmarks;
  List<Bookmark> bookmarks = [];

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  // Load the bookmarks from local storage
  Future<void> _loadBookmarks() async {
    final loadedBookmarks = await bookmarkService.getBookmarks();
    setState(() {
      bookmarks = loadedBookmarks;
    });
  }

  // Remove a bookmark and update the UI
  Future<void> _deleteBookmark(int index) async {
    final bookmarkToRemove = bookmarks[index];
    await bookmarkService
        .removeBookmark(bookmarkToRemove.question); // Remove from storage
    setState(() {
      bookmarks.removeAt(index); // Remove from UI
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text('${bookmarkToRemove.question} removed from bookmarks')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarked Questions'),
      ),
      body: bookmarks.isEmpty
          ? const Center(child: Text('No bookmarks added yet.'))
          : ListView.builder(
        itemCount: bookmarks.length,
        itemBuilder: (context, index) {
          final bookmark = bookmarks[index];

          return Column(
            children: [
              Dismissible(
                key: Key(bookmark.question),
                background: Container(
                  color: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: AlignmentDirectional.centerStart,
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                direction: DismissDirection.startToEnd,
                onDismissed: (direction) {
                  // Delete bookmark when swiped
                  _deleteBookmark(index);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(bookmark.question),
                        onTap: () {
                          // Pass the entire bookmark list and the selected index
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookmarkDetailsScreen(
                                bookmarks: bookmarks, // Pass all bookmarks
                                initialIndex: index, // Pass the selected bookmark index
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    
                    const Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Icon(Icons.chevron_right),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Divider(),
              ),
            ],
          );
        },
      ),
    );
  }
}
