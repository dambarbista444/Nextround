
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import "package:next_round/Model/bookmark.dart";

class BookmarkService {
  static const String bookmarkKey = 'bookmarks';

  // Save a bookmark
  Future<void> saveBookmark(Bookmark bookmark) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> savedBookmarks = prefs.getStringList(bookmarkKey) ?? [];

    // Add new bookmark
    savedBookmarks.add(jsonEncode(bookmark.toJson()));
    await prefs.setStringList(bookmarkKey, savedBookmarks);
  }

  // Remove a bookmark
  Future<void> removeBookmark(String question) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> savedBookmarks = prefs.getStringList(bookmarkKey) ?? [];

    // Remove bookmark based on the ID
    savedBookmarks.removeWhere((bookmarkString) {
      final Map<String, dynamic> json = jsonDecode(bookmarkString);
      return json['question'] == question;
    });

    await prefs.setStringList(bookmarkKey, savedBookmarks);
  }

  // Get all bookmarks
  Future<List<Bookmark>> getBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> savedBookmarks = prefs.getStringList(bookmarkKey) ?? [];
    return savedBookmarks.map((bookmark) => Bookmark.fromJson(jsonDecode(bookmark))).toList();
  }

  // Check if a question is already bookmarked
  Future<bool> isBookmarked(String question) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> savedBookmarks = prefs.getStringList(bookmarkKey) ?? [];

    // Check if the bookmark exists in the list
    return savedBookmarks.any((bookmarkString) {
      final Map<String, dynamic> json = jsonDecode(bookmarkString);
      return json['question'] == question;
    });
  }
}