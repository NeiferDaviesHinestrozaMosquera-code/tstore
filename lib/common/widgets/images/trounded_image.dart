import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, 
    this.width , 
    this.height , 
    required this.imageUrl,  
    this.applyImageRadius = true,  
    this.isNewtorkImage = false, 
    this.border,  
    this.backgroundColor = TColors.light,  
    this.fit = BoxFit.contain, 
    this.padding, 
    this.onPressed, 
    this.borderRadius = TSizes.md,
  });

  final double? width , height;
  final String imageUrl;
  final bool applyImageRadius ;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final bool isNewtorkImage ;
  final double borderRadius ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ?  BorderRadius.circular(borderRadius) :  BorderRadius.zero,
            child: Image(
              image: isNewtorkImage  ?  NetworkImage(imageUrl ) : AssetImage(imageUrl ) as ImageProvider ,
              fit: fit,
            )
        ),
      ),
    );
  }
}

