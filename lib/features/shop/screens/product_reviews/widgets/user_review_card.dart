import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/common/widgets/products/ratings/rating_indicator.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text("John Hon" , style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),

        //Review
        Row(children: [
          const TRatingBarIndicator(rating: 4),
          const SizedBox(width: TSizes.spaceBtwItems,),
          Text("01 Dec , 2024" , style: Theme.of(context).textTheme.bodyMedium,)
        ],),
         const SizedBox(width: TSizes.spaceBtwItems,),
         const ReadMoreText("Estoy muy satisfecho con mi compra. El producto cumple con mis expectativas y la calidad es excelente. Lo recomiendo a todos!",
         trimLines: 2,
         trimMode: TrimMode.Line,
         trimExpandedText: 'Show Less',
         trimCollapsedText: 'Show More',
         moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
         lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
         ),
          const SizedBox(width: TSizes.spaceBtwItems,),

          //Company Reviews
          TRoundedContianer(
            backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
            child: Padding(
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Support Tstore N <3", style: Theme.of(context).textTheme.bodyLarge,),
                    Text("23 Dec , 2024", style: Theme.of(context).textTheme.bodyMedium,),
                    ],
                  ),
                        const SizedBox(width: TSizes.spaceBtwItems,),
         const ReadMoreText("Estoy muy satisfecho con mi compra. El producto cumple con mis expectativas y la calidad es excelente. Lo recomiendo a todos!",
         trimLines: 2,
         trimMode: TrimMode.Line,
         trimExpandedText: 'Show Less',
         trimCollapsedText: 'Show More',
         moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
         lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
         ),
          const SizedBox(width: TSizes.spaceBtwItems,),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,)
      ],
    );
  }
}