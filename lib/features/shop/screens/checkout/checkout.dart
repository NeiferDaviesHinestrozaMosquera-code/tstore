import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/common/widgets/products/cart/coupon_code.dart';
import 'package:tstore/common/widgets/success_screen/success_screen.dart';
import 'package:tstore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:tstore/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:tstore/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:tstore/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:tstore/navigation_menu.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //items in cart
              const TCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Coupon TextFIELD
              const TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Biling Section
              TRoundedContianer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///divider
                    Divider(
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///payment methods
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///address
                    TBillingAddressSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      //Check Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: TImages.successfulPaymentIcon,
                    title: "Payment Success!!",
                    subTitle: "Your item will be shipped soon",
                    onPress: () => Get.offAll(() => const NavigationMenu()),
                  ),
                ),
            child: const Text("Checkout  \$2562")),
      ),
    );
  }
}
