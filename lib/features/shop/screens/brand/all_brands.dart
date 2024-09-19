import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/layouts/grid_layout.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/brands/brand_card.dart';
import 'package:tstore/common/widgets/products/sortable/sortable_products.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/features/shop/screens/brand/brand_products.dart';
import 'package:tstore/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Brand"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //Heading
            TSectionHeading(title: "Brands",showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems,),

            //Brands
            TGridLayout(
              itemCount: 10, 
              mainAxisExtent: 80, 
              itemBuilder: (context,index)=> TBrandCard(
                showBorder: true,
                onTap: () => Get.to(()=>BrandProducts(),)
              )
            ),
 
          ],
        ),),
      )
    );
  }
}