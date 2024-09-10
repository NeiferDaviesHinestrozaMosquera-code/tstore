import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Rating
        Row(
          children: [
            Icon(Iconsax.star5 , color: Colors.amber,size: 24,),
            SizedBox(width: TSizes.spaceBtwItems / 2,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '4.9' , style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: '(200)')
                ]
    
              )
            )
          ],
        ),
        ///Share
        IconButton(onPressed: (){}, icon: Icon(Iconsax.share,size: TSizes.iconMd,))
      ],
    );
  }
}

