import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/images/tcircular_image.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Edit Profile"),
      ),

      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [

                //profile picture
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const TCircularImage(image: TImages.user , width: 100,height: 100,),
                      TextButton(onPressed: (){}, child: const Text("Change Profile Picture"))
                    ],
                  ),
                ),

                //Details
                const SizedBox(height: TSizes.spaceBtwItems / 2,),
                const Divider(color: Colors.transparent,),
                const SizedBox(height: TSizes.spaceBtwItems),
                const TSectionHeading(title: "Profile Information", showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems),

                //Heading Profile
                TProfileMenu(onPressed: () {  }, title: 'Name', value: 'Rick Sanchez',),
                TProfileMenu(onPressed: () {  }, title: 'UserName', value: 'Rick_Sanchez_2024',),

                const SizedBox(height: TSizes.spaceBtwItems),
                const Divider(color: Colors.transparent,),
                const SizedBox(height: TSizes.spaceBtwItems),

                //Heading Personal
                const TSectionHeading(title: "Personal Information", showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems),

                TProfileMenu(onPressed: () {  }, title: 'User Id', value: '123456',icon: Iconsax.copy,),
                TProfileMenu(onPressed: () {  }, title: 'Email', value: 'Rick_Sanchez_2024@gmail.com',),
                TProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '1029384865',),
                TProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Fluyen',),
                TProfileMenu(onPressed: () {  }, title: 'Date of birth', value: '99 Dec , 1945',),
                  const Divider(color: Colors.transparent,),
                const SizedBox(height: TSizes.spaceBtwItems),

                Center(
                  child: TextButton(
                    onPressed: (){
                      print("Boton de salir");
                      
                    }, 
                    child: const Text("Close Account",style: TextStyle(color: Colors.red),)),
                )
              ],
            ),
          ),
      ),
    );
  }
}

