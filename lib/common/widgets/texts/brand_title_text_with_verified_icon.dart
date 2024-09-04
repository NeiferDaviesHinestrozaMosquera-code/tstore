import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/texts/brand_title_text.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/enums.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon(
      {super.key,
      required this.title,
       this.maxLines = 1,
      this.textColor,
      this.iconColor = TColors.primary,
      this.textAlign =  TextAlign.center,
       this.brandTextSizes = TextSizes.small
      });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.min,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSizes: brandTextSizes,
          
        )),
        const SizedBox(width: TSizes.xs,),
        Icon(Iconsax.verify5 , color: iconColor , size: TSizes.iconXs,)
      ],
    );
  }
}
