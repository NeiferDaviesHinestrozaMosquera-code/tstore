import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Add new address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(keyboardType: TextInputType.name,decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: "Name"),),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField( keyboardType: TextInputType.phone,decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: "Phone number"),),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
               Row(
                children: [
                Expanded(child: TextFormField(keyboardType: TextInputType.streetAddress,decoration: const InputDecoration(prefixIcon: Icon(Iconsax.map1),labelText: "Address"),)),
                const SizedBox(width: TSizes.spaceBtwInputFields,),
                 Expanded(child: TextFormField(keyboardType: TextInputType.number,decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: " Postal Code"),)),
                ],
               ),
               const SizedBox(height: TSizes.spaceBtwInputFields,),
               Row(
                children: [
                   Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: "City"),)),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
                Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: "State"),)),
                ],
               ),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: "Country"),),
                const SizedBox(height: TSizes.defaultSpace,),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("Save Address")),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

