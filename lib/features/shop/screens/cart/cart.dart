import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/icons/cirular_icon.dart';
import 'package:tstore/common/widgets/images/trounded_image.dart';
import 'package:tstore/common/widgets/products/cart/add_remove_button.dart';
import 'package:tstore/common/widgets/products/cart/cart_item.dart';
import 'package:tstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tstore/common/widgets/texts/product_price.dart';
import 'package:tstore/common/widgets/texts/product_title.dart';
import 'package:tstore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:tstore/features/shop/screens/checkout/checkout.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Cart",style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems()
        
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> CheckoutScreen()), child: Text("Checkout  \$2562")),
      ),
    );
  }
}

