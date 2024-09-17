import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tstore/common/widgets/images/tcircular_image.dart';
import 'package:tstore/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:tstore/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/features/personalization/screens/address/address.dart';
import 'package:tstore/features/shop/screens/order/order.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///HEADER
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Text("Account" , style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),

                  //User Profile
                  const TUserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              )
            ),

            ///BODY
            Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Account
                const TSectionHeading(title: "Account Settings",showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),

                TSettingsMenuTile(icon: Iconsax.safe_home, title: "My Address", subTitle: "subTitle", onTap: () => Get.to(()=> UserAddressScreen())),
                TSettingsMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subTitle: "subTitle", onTap: () { print("Boton de direccion"); }, ),
                TSettingsMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subTitle: "subTitle", onTap: () => Get.to(()=> OrderScreen())),
                TSettingsMenuTile(icon: Iconsax.bank, title: "Bank Account", subTitle: "subTitle", onTap: () { print("Boton de direccion"); }, ),
                TSettingsMenuTile(icon: Iconsax.discount_shape, title: "My Coupons", subTitle: "subTitle", onTap: () { print("Boton de direccion"); }, ),
                TSettingsMenuTile(icon: Iconsax.notification, title: "Notifications", subTitle: "subTitle", onTap: () { print("Boton de direccion"); }, ),
                TSettingsMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subTitle: "subTitle", onTap: () { print("Boton de direccion"); }, ),
                
                //App Settings
                const SizedBox(height: TSizes.spaceBtwSections,),
                const TSectionHeading(title: "App Settings",showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TSettingsMenuTile(icon: Iconsax.document_upload, title: "Load Data", subTitle: "Upload Data to your Cloud Firebase" , trailing: Switch(value: true, onChanged: (value){}),),
                TSettingsMenuTile(icon: Iconsax.security_user, title: "Safe Mode", subTitle: "Upload Data to your Cloud Firebase" , trailing: Switch(value: false, onChanged: (value){}),),
                TSettingsMenuTile(icon: Iconsax.image, title: "HD Image Quality", subTitle: "Upload Data to your Cloud Firebase" , trailing: Switch(value: false, onChanged: (value){}),),
                TSettingsMenuTile(icon: Iconsax.happyemoji, title: "Happy ?", subTitle: "Upload Data to your Cloud Firebase" , trailing: Switch(value: true, onChanged: (value){}),),

                //Logout
                const SizedBox(height: TSizes.spaceBtwSections,),
                SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){}, child: const Text("Logout")),),
                const SizedBox(height: TSizes.spaceBtwSections * 2.5,)
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}

