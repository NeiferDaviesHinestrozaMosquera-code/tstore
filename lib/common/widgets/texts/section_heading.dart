import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,  this.showActionButton = true, this.onPressed,  this.title, this.buttonTitle = 'View All',
  });

  final bool showActionButton;
  final void Function()? onPressed;
  final String? title ;
  final String? buttonTitle;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title! , style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.black), maxLines: 1, overflow: TextOverflow.ellipsis,),
       if (showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle!))
      ],
    );
  }
}

