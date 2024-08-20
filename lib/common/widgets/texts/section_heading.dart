import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,  this.showActionButton = false, this.onPressed,
  });

  final bool showActionButton;
  final void Function()? onPressed;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Popular Categories' , style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white), maxLines: 1, overflow: TextOverflow.ellipsis,),
       if (showActionButton) TextButton(onPressed: onPressed, child: Text("View All"))
      ],
    );
  }
}

