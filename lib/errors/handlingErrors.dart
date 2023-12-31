import 'package:flutter/material.dart';

class ArticlesErrorMessage extends StatelessWidget {
  const ArticlesErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: Text('Oops There Was An Error , Please Try later'),
      ),
    );
  }
}
