import 'package:flutter/material.dart';
import 'package:navigator_two/models/book.dart';

import 'books_list_screen.dart';

class BooksApp extends StatefulWidget {
  BooksApp({Key? key}) : super(key: key);

  @override
  _BooksAppState createState() => _BooksAppState();
}

class _BooksAppState extends State<BooksApp> {
  Book? _selectedBook;
  bool _show404 = false;

  List<Book> books = [
    Book('Admirável mundo novo', 'Aldous Huxley'),
    Book('1984', 'George Orwell'),
    Book('A revolução dos bichos', 'George Orwell'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('Books List Page'),
            child: BooksListScreen(
              books: books,
              onTapped: _handleBookTapped,
            )
          )
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
      
      
    );
  }

  void _handleBookTapped(Book book) {
    setState(() {
      _selectedBook = book;
    });
  }
}
