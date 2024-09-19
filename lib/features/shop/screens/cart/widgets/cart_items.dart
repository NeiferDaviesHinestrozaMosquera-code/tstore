import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/products/cart/add_remove_button.dart';
import 'package:tstore/common/widgets/products/cart/cart_item.dart';
import 'package:tstore/common/widgets/texts/product_price.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key,  this.showAddRemoveButtons =  true});

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_,index) => Column(
            children: [
              //
              const TCartItem(),

              if(showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems,),

              //Add Remove button row with total price
              if(showAddRemoveButtons) const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70,),
                     //Add remove button
                    TProductQuatityWithAddRemoveButton(),
                    ],
                  ),
                  //Product Total Price
                  TProductPriceText(price: "235"),
                ],
              )
            ],
          ), 
          separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwSections,), 
          itemCount: 4);
  }
}