import 'package:flutter/material.dart';

import '../../../constants/app_defaults.dart';
import '../../../constants/constants.dart';

class AppointmentListTile extends StatelessWidget {
  const AppointmentListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
          borderRadius: AppDefaults.borderRadius,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(2, 0),
              spreadRadius: 1,
              blurRadius: 25,
            ),
          ]),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.network(
                  'https://i.imgur.com/x0NR8NZ.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppDefaults.margin),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dorothy Nelson',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '09 Jan 2020, 8am - 10am',
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
          const Spacer(),
          Material(
            child: IconButton(
              onPressed: () {},
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.more_vert_rounded,
                size: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
