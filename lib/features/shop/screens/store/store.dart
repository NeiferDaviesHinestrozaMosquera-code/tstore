import 'package:flutter/material.dart';
import 'package:tstore/common/layouts/grid_layout.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tstore/common/widgets/images/tcircular_image.dart';
import 'package:tstore/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:tstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/enums.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: TAppBar(
        title: Text(
          'Store N',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [TCartCounterIcon(color: TColors.black,onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ///Search
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSearchContainer(
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      //Featured Brands
                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      TGridLayout(itemCount: 4, mainAxisExtent: 80,itemBuilder: (_,index){
                        return GestureDetector(
                        onTap: () {
                          print("Tocaste un selector de store n");
                        },
                        child: TRoundedContianer(
                          padding: EdgeInsets.all(TSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              //Icon
                              Flexible(
                                child: TCircularImage(
                                  isNetworkImage: false,
                                  image: TImages.clothIcon,
                                  backgroundColor: Colors.transparent,
                                  overlayColor: THelperFunctions.isDarkMode(context)
                                      ? TColors.white
                                      : TColors.black,
                                ),
                              ),
                              const SizedBox(
                                width: TSizes.spaceBtwItems / 2,
                              ),
                              //Text
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  TBrandTitleWithVerifiedIcon(title: 'Nike' , brandTextSizes: TextSizes.large,),
                                  Text('256 Products' , overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelMedium,)
                                ],),
                              )
                            ],
                          ),
                        ),
                      );
                    
                      })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
