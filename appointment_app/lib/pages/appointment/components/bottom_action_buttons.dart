import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDefaults.padding * 2,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Accept'),
              ),
            ),
            const SizedBox(width: AppDefaults.margin / 2),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Decline'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade300,
                  onPrimary: AppColors.black, // Will be used for text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
