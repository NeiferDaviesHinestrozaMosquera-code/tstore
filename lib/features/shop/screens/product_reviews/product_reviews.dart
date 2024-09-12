import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/products/ratings/rating_indicator.dart';
import 'package:tstore/features/shop/screens/product_reviews/widgets/progress_indicator_rating.dart';
import 'package:tstore/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:tstore/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/device/device_utility.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: TAppBar(
        title: Text("Reviews & Ratings"),showBackArrow: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Reviews and ratings have become an essential component of online shopping, allowing customers to share their experiences and opinions about products or services. This valuable feedback not only helps other customers make informed purchasing decisions but also provides businesses with insights to improve their offerings."),
            SizedBox(height: TSizes.spaceBtwItems,),

            //Overall Product Rating
            TOverallProductRating(),
            TRatingBarIndicator(rating: 2.9,),
            Text("12,611" , style: Theme.of(context).textTheme.bodySmall,),
            SizedBox(height: TSizes.spaceBtwSections,),


            //User Reviews List
            UserReviewCard(),
            UserReviewCard(),
            UserReviewCard(),
          ],
        ),
      ),
    );
  }
}



