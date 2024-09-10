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
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Edit Profile"),
      ),

      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [

                //profile picture
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      TCircularImage(image: TImages.user , width: 100,height: 100,),
                      TextButton(onPressed: (){}, child: Text("Change Profile Picture"))
                    ],
                  ),
                ),

                //Details
                SizedBox(height: TSizes.spaceBtwItems / 2,),
                Divider(color: Colors.transparent,),
                SizedBox(height: TSizes.spaceBtwItems),
                TSectionHeading(title: "Profile Information", showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwItems),

                //Heading Profile
                TProfileMenu(onPressed: () {  }, title: 'Name', value: 'Rick Sanchez',),
                TProfileMenu(onPressed: () {  }, title: 'UserName', value: 'Rick_Sanchez_2024',),

                SizedBox(height: TSizes.spaceBtwItems),
                Divider(color: Colors.transparent,),
                SizedBox(height: TSizes.spaceBtwItems),

                //Heading Personal
                TSectionHeading(title: "Personal Information", showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwItems),

                TProfileMenu(onPressed: () {  }, title: 'User Id', value: '123456',icon: Iconsax.copy,),
                TProfileMenu(onPressed: () {  }, title: 'Email', value: 'Rick_Sanchez_2024@gmail.com',),
                TProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '1029384865',),
                TProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Fluyen',),
                TProfileMenu(onPressed: () {  }, title: 'Date of birth', value: '99 Dec , 1945',),
                  Divider(color: Colors.transparent,),
                SizedBox(height: TSizes.spaceBtwItems),

                Center(
                  child: TextButton(
                    onPressed: (){
                      print("Boton de salir");
                      
                    }, 
                    child: Text("Close Account",style: TextStyle(color: Colors.red),)),
                )
              ],
            ),
          ),
      ),
    );
  }
}

