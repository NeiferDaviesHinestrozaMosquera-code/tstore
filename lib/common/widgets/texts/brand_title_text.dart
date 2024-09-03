import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/enums.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.title,
     this.maxLines = 1,
    this.color,
     this.textAlign = TextAlign.center,
     this.brandTextSizes =  TextSizes.small,
  });

  final String title; //
  final int maxLines; //
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      style: brandTextSizes == TextSizes.small 
        ? Theme.of(context).textTheme.labelMedium!.apply(color: color) 
        : brandTextSizes == TextSizes.medium 
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          : brandTextSizes == TextSizes.large 
            ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
            : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
      
    
    );
  }
}
