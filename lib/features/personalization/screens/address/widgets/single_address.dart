import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContianer(
      padding: EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? TColors.darkerGrey : TColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(right: 5,top: 0, child: Icon(selectedAddress ? Iconsax.tick_circle5 : null , color: selectedAddress ? dark ? TColors.light : TColors.dark : null,)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("John Hon" , maxLines: 1, overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: TSizes.sm / 2,),
              Text("+1 304283922" , maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: TSizes.sm / 2,),
              Text("33122 Street way , Miami Florida , 33122 , USA" ,softWrap: true,),
              SizedBox(height: TSizes.sm / 2,),
            ],
          )
        ],
      ),
    );
  }
}