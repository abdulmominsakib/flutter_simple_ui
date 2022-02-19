import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class AttachmentCard extends StatelessWidget {
  const AttachmentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEBFCFF),
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Row(
        children: [
          Container(
            width: 2,
            height: MediaQuery.of(context).size.height * 0.04,
            margin: const EdgeInsets.symmetric(
              vertical: AppDefaults.margin,
            ),
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
          const SizedBox(width: AppDefaults.margin),
          const Icon(
            Icons.attach_file,
            color: Colors.green,
          ),
          const SizedBox(width: AppDefaults.margin),
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Complete blood count',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontWeight: FontWeight.bold, color: AppColors.textBody),
                ),
                Text(
                  '05 Mar 2020',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: AppColors.textBody),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
