import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/images/trounded_image.dart';
import 'package:tstore/common/widgets/products/products_card/product_card_horizontal.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Sport"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              const TRoundedImage(imageUrl: TImages.promoBanner1 , width: double.infinity,applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //SubCategory
              Column(
                children: [
                  //Heading
                  TSectionHeading(title: "Sport Shirts",onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems / 2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context,index) {
                      return const TProductCardHorizontal();
                    }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}