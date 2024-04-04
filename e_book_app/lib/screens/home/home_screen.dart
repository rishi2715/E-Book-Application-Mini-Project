import 'package:flutter/material.dart';
import 'package:e_book_app/screens/home/sections/all_purchased_books.dart';
import 'package:e_book_app/widgets/keep_reading_section.dart';
import 'package:e_book_app/widgets/last_opened_book.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lit Habit",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              LastOpenedBook(),
              KeepReadingSection(),
              AllPurchasedBooks(),
            ],
          ),
        ),
      ),
    );
  }
}
