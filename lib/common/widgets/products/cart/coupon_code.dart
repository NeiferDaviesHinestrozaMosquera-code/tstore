import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContianer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
          top: TSizes.sm,
          bottom: TSizes.sm,
          right: TSizes.sm,
          left: TSizes.sm),
      child: Row(
        children: [
          //Promo
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Have a promo code ? Enter Here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
    
          //Button apply
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? TColors.white.withOpacity(0.5)
                          : TColors.dark.withOpacity(0.5),
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          side: BorderSide(color: Colors.grey.withOpacity(0.1))
                      ),
                  child: Text("Apply")))
        ],
      ),
    );
  }
}
