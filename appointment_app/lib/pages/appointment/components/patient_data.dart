import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'attachment_tile.dart';

class PatientData extends StatelessWidget {
  const PatientData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDefaults.padding * 2,
        vertical: AppDefaults.padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Louis\nPatterson',
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
          ),
          const SizedBox(height: AppDefaults.margin),
          Text('Comment:', style: Theme.of(context).textTheme.caption),
          const SizedBox(height: AppDefaults.margin),
          Text(
            '''Hello, Dr. Peterson,
I am going to bring my complete blood count analysis with me.
            ''',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
          ),
          const AttachmentCard(),
        ],
      ),
    );
  }
}
