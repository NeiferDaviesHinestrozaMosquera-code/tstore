import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: "Change",
          onPressed: (){},
        ),
        Text("Rick sanchez" ,style: Theme.of(context).textTheme.bodyLarge,),

        Row(
          children: [
            Icon(Icons.phone , color: Colors.grey , size: 16,),
            SizedBox(width: TSizes.spaceBtwItems),
            Text("+822328932",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 2,),

         Row(
          children: [
            Icon(Icons.map , color: Colors.grey , size: 16,),
             SizedBox(height: TSizes.spaceBtwItems / 2,),
            Expanded(child: Text("Away South Park 230 , Miami , Fl , Usa",style: Theme.of(context).textTheme.bodyMedium,softWrap: true,))
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 2,)
      ],
    );
  }
}