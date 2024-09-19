import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/image_text/vertical_image_text.dart';
import 'package:tstore/features/shop/screens/sub_category/subcategory.dart';
import 'package:tstore/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index){
         return TVerticalImageText(
          image: TImages.shoeIcon, 
          title: 'Shoes',
          onTap: ()=> Get.to(()=> const SubCategoryScreen()),);
        }
      ),
    );
  }
}

