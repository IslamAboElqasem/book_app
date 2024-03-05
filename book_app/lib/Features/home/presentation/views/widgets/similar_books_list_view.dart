import 'package:book_app/Features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_app/Features/home/presentation/views/widgets/cistom_book_image.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl:
                          'https://i.pinimg.com/564x/e3/e0/09/e3e009f1b8215e6df098daf293a6bc18.jpg',
                    ));
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errmessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
