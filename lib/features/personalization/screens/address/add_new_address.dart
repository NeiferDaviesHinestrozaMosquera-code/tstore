import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Add new address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(keyboardType: TextInputType.name,decoration: InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: "Name"),),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField( keyboardType: TextInputType.phone,decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: "Phone number"),),
                SizedBox(height: TSizes.spaceBtwInputFields,),
               Row(
                children: [
                Expanded(child: TextFormField(keyboardType: TextInputType.streetAddress,decoration: InputDecoration(prefixIcon: Icon(Iconsax.map1),labelText: "Address"),)),
                SizedBox(width: TSizes.spaceBtwInputFields,),
                 Expanded(child: TextFormField(keyboardType: TextInputType.number,decoration: InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: " Postal Code"),)),
                ],
               ),
               SizedBox(height: TSizes.spaceBtwInputFields,),
               Row(
                children: [
                   Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: "City"),)),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: "State"),)),
                ],
               ),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: "Country"),),
                SizedBox(height: TSizes.defaultSpace,),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text("Save Address")),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

