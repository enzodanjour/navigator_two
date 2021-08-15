import 'package:flutter/material.dart';
import 'package:navigator_two/models/book.dart';
import 'package:navigator_two/pages/routes/book_route_path.dart';

class BookRouterDelegate extends RouterDelegate<BookRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<BookRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  Book? _selectedBook;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement navigatorKey
  GlobalKey<NavigatorState>? get navigatorKey => throw UnimplementedError();

  @override
  Future<void> setNewRoutePath(BookRoutePath configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }
}
