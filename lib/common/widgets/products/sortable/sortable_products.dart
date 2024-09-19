import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/layouts/grid_layout.dart';
import 'package:tstore/common/widgets/products/products_card/product_card_vertfical.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
          alignment: Alignment.centerRight,
            decoration: const InputDecoration(
                prefix: Icon(Iconsax.sort)), 
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) => DropdownMenuItem(
                    value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}),
            const SizedBox(height: TSizes.spaceBtwSections,),
            TGridLayout(
              itemCount: 4, 
              itemBuilder: (_,index)=> const TProductCardVertical()
            ),
      ],
    );
  }
}
