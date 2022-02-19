import 'package:flutter/material.dart';

import 'components/bottom_action_buttons.dart';
import 'components/patient_data.dart';
import 'components/top_header_appointment.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: Text(
          'Appointment Request',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Colors.white),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
              size: 16,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: const [
          TopHeader(),
          PatientData(),
          Spacer(),
          BottomActionButtons()
        ],
      ),
    );
  }
}
