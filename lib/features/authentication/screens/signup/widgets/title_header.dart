import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/text_string.dart';

class TTitleHeader extends StatelessWidget {
  const TTitleHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TTexts.signupTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
