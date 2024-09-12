import 'package:flutter/material.dart';
import 'package:tstore/features/shop/screens/product_reviews/widgets/progress_indicator_rating.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text("4.8", style: Theme.of(context).textTheme.displayLarge,)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(text: '5', value: 1.0,),
              TRatingProgressIndicator(text: '4', value: 0.9,),
              TRatingProgressIndicator(text: '3', value: 0.4,),
              TRatingProgressIndicator(text: '2', value: 0.7,),
              TRatingProgressIndicator(text: '1', value: 0.1,),
            ],
          ),
        )
        
      ],
    );
  }
}

