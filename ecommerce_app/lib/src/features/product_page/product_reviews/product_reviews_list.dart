import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/common_widgets/responsive_center.dart';
import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/features/product_page/product_reviews/product_review_card.dart';
import 'package:ecommerce_app/src/models/review.dart';

/// Shows the list of reviews for a given product ID
class ProductReviewsList extends StatelessWidget {
  const ProductReviewsList({Key? key, required this.productId})
      : super(key: key);
  final String productId;
  @override
  Widget build(BuildContext context) {
    // TODO: Read from data source
    final reviews = <Review>[];
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) => ResponsiveCenter(
          maxContentWidth: Breakpoint.tablet,
          padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p16, vertical: Sizes.p8),
          child: ProductReviewCard(reviews[index]),
        ),
        childCount: reviews.length,
      ),
    );
  }
}