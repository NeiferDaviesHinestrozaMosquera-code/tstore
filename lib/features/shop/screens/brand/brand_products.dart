import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/brands/brand_card.dart';
import 'package:tstore/common/widgets/products/sortable/sortable_products.dart';
import 'package:tstore/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Nike"),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //Brand Detail
            TBrandCard(showBorder: true),
            SizedBox(height: TSizes.spaceBtwSections,),

            TSortableProducts(),
          ],
        ),
        ),
      )
    );
  }
}