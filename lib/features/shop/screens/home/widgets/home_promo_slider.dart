import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/images/trounded_image.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, 
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: const [
            TRoundedImage(imageUrl: TImages.promoBanner1),
            TRoundedImage(imageUrl: TImages.promoBanner2),
            TRoundedImage(imageUrl: TImages.promoBanner3),
          ], 
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
          )
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
    
        //CODIGO MUERTO
        // Row(
        //   children: [
        //     TCircularContainer(
        //       width: 20,
        //       height: 20,
        //       backgroundColor: Colors.green,
        //     ),
        //   ],
        // )
      ],
    );
  }
}

