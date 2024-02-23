import 'package:book_app/Features/home/presentation/views/widgets/book_details_action.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/Features/home/presentation/views/widgets/cistom_list_view_item.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18),
          child: const CustomListViewItem(
            kItyem: 6,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          textAlign: TextAlign.center,
          'Harry Potter and the Philosopher’s Stone',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'J.k. Rowling',
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          kItem: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookDetailsAction(),
      ],
    );
  }
}