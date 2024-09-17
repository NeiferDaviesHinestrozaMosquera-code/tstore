import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              "Subtotal",
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Text(
              "\$250",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 2),

        //Shipping free
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              "Shipping Fee",
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Text(
              "\$2.50",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 2),

        //Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              "Tax Fee",
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Text(
              "\$2.50",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 2),

        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              "Order Total",
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Text(
              "\$500",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }
}
