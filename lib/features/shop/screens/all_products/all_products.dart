import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/layouts/grid_layout.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/products/products_card/product_card_vertfical.dart';
import 'package:tstore/common/widgets/products/sortable/sortable_products.dart';
import 'package:tstore/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TAppBar(
          title: Text("Popular Products"),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: TSortableProducts(),
          ),
        ));
  }
}

