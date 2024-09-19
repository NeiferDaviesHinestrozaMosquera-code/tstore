import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_,index) => TRoundedContianer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
      
            //Row 1
            Row(
              children: [
                //Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems / 2,),
      
                //Status order and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Processing" , style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1),),
                      Text("31 Dec 2024" , style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                //Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: TSizes.iconSm,)),
              ],
            ),
      
            const SizedBox(height: TSizes.spaceBtwItems,),
            //Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems / 2,),
                  
                      //Status order and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order" , style: Theme.of(context).textTheme.labelMedium),
                            Text("[#0031122024]" , style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems / 2,),
                  
                      //Status order and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping Date" , style: Theme.of(context).textTheme.labelMedium),
                            Text("10 Jan 2025" , style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              
              ],
            ),
          
          ],
        ),
      ),
    );
  }
}