import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/shop/screens/cart/cart.dart';
import 'package:tstore/utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.onPressed, this.color = TColors.white, 
  });

final VoidCallback onPressed;
final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: ()=> Get.to(()=> CartScreen() ), icon: Icon(Iconsax.shopping_bag , color: color),iconSize: 40,),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text("2" , style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white , fontSizeFactor: 0.8),),
            ),
          ),
        )
    
      ],
    );
  }
}
