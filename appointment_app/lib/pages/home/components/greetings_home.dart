import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class GreetingsHome extends StatelessWidget {
  const GreetingsHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back!',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: AppColors.textBody,
              ),
        ),
        Text(
          'Dr. Peterson',
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
