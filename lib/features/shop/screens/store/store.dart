import 'package:flutter/material.dart';
import 'package:tstore/common/layouts/grid_layout.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/appbar/tabbar.dart';
import 'package:tstore/common/widgets/brands/brand_card.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tstore/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/features/shop/screens/store/widget/category_tab.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6, //ESTO SE CAMBIA POR EL NUMERO DE TABS QUE ESTAN ABAJO
        child: Scaffold(
          appBar: TAppBar(
            title: Text(
              'Store N',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [TCartCounterIcon(color: TColors.black, onPressed: () {})],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ///Search
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          const TSearchContainer(
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),

                          //Featured Brands
                          TSectionHeading(
                            title: 'Featured Brands',
                            onPressed: () {},
                          ),
                          const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                          TGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const TBrandCard(
                                  showBorder: true,
                                ); ////REVISAR ACA XXXXXX
                              })
                        ],
                      ),
                    ),

                    ///Tabs
                    bottom: const TTabBar(
                      tabs: [
                        Tab(
                          child: Text("Sport"),
                        ),
                        Tab(
                          child: Text("Furnite"),
                        ),
                        Tab(
                          child: Text("Electronics"),
                        ),
                        Tab(
                          child: Text("Clothes"),
                        ),
                        Tab(
                          child: Text("Cosmetics"),
                        ),
                        Tab(
                          child: Text("Others"),
                        ),
                      ],
                    ),
                  )
                ];
              },
              body: const TabBarView(children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ])),
        ));
  }
}
