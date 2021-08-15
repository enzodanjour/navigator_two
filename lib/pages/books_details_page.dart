import 'package:flutter/material.dart';
import 'package:navigator_two/models/book.dart';

import 'book_details_screen.dart';

class BooksDetailsPage extends Page {
  final Book book;

  BooksDetailsPage({required this.book}) : super(key: ValueKey(book));

  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
        settings: this,
        pageBuilder: (context, animation, animation2) {
          var tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero);
          var curveTween = CurveTween(curve: Curves.easeInOut);
          return SlideTransition(
            position: animation.drive(curveTween).drive(tween),
            child: BookDetailsScreen(
              book: book,
            )
          );
        });
  }
}
