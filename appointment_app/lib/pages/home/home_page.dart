import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../constants/app_defaults.dart';
import 'components/appointment_card.dart';
import 'components/appointment_list_tile.dart';
import 'components/greetings_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(IconlyLight.calendar))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GreetingsHome(),
            const SizedBox(height: AppDefaults.margin),
            const AppointmentCard(),

            // Appointments
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppDefaults.padding,
              ),
              child: Text(
                'Next Appointments',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            const AppointmentListTile(),
            const AppointmentListTile(),
            const AppointmentListTile(),
          ],
        ),
      ),
    );
  }
}
