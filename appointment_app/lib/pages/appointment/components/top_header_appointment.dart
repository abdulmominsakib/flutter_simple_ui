import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: [
          /// Background and Date
          Container(
            padding: const EdgeInsets.all(AppDefaults.padding * 2),
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: AppDefaults.gradient,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                  AppDefaults.radius * 7,
                ),
              ),
            ),
            alignment: Alignment.centerLeft,
            // This is for centering from the appbar not the whole screen
            child: SafeArea(
              child: Text(
                '12 Jan 2020\n8am - 10am',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: AppDefaults.padding * 2,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Colors.white,
                      width: 8,
                    ),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius: AppDefaults.borderRadius,
                        child: Image.network(
                          'https://i.imgur.com/PJpPD6S.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppDefaults.margin),
                Container(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3ECCFF),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 8,
                    ),
                  ),
                  child: const Icon(Icons.call, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
