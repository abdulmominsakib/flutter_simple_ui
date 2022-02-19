import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../constants/constants.dart';

import '../../appointment/appointment_page.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: AppDefaults.borderRadius,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AppointmentPage()));
        },
        borderRadius: AppDefaults.borderRadius,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: AppDefaults.borderRadius,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(2, 0),
                spreadRadius: 1,
                blurRadius: 25,
              )
            ],
          ),
          child: Column(
            children: [
              /// TOP PART APPOINTMENT
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDefaults.padding,
                  vertical: AppDefaults.padding,
                ),
                decoration: const BoxDecoration(
                  gradient: AppDefaults.gradient,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppDefaults.radius),
                    topRight: Radius.circular(AppDefaults.radius),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Appointment Request',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(color: Colors.white70),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.more_vert_rounded,
                              color: Colors.white,
                              size: 16,
                            ))
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        const Icon(
                          IconlyBold.timeSquare,
                          color: Colors.white,
                        ),
                        const SizedBox(width: AppDefaults.margin / 2),
                        Text(
                          '12 Jan 2020, 8am - 10am',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              /// Bottom Section
              Container(
                padding: const EdgeInsets.all(
                  AppDefaults.padding,
                ),
                child: Column(
                  children: [
                    // User Info
                    Row(
                      children: [
                        /// Image
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.12,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: AspectRatio(
                              aspectRatio: 1 / 1,
                              child: Image.network(
                                'https://i.imgur.com/PJpPD6S.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: AppDefaults.margin),
                        // Person Name
                        const Text('Louis\nPatterson'),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(IconlyLight.infoSquare))
                      ],
                    ),
                    const SizedBox(height: AppDefaults.margin),
                    // Actions
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
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
                              onPrimary:
                                  AppColors.black, // Will be used for text
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
