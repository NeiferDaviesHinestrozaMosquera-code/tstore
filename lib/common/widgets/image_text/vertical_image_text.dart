import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, required this.image, required this.title, this.onTap, this.backgrundColor = TColors.white,
  });

  final String image , title;
  final Color? backgrundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
           children: [
             
             //Circular Icon
             Container(
               width: 56,
               height: 56,
               padding: EdgeInsets.all(TSizes.sm),
               decoration: BoxDecoration(
                 color: backgrundColor ?? (dark ? TColors.black : TColors.white),
                 borderRadius: BorderRadius.circular(100),
               ),
               child: Center(
                 child: Image(image: AssetImage(image) , fit: BoxFit.cover , color: dark ? TColors.light : TColors.dark),
               ),
             ),
        
             //TEXT
             const SizedBox(height: TSizes.spaceBtwItems / 2),
             SizedBox(
              width:55,
              child: Text(
                title , 
                style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: backgrundColor ?? (dark ? TColors.black : TColors.white)
                ), 
                maxLines: 1, 
                overflow: TextOverflow.ellipsis,
                )
              ),
        
           ],
         ),
      ),
    );
  }
}

