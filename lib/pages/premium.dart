// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class PremiumPage extends StatelessWidget {
  PremiumPage({super.key});

  List Experience = [
    'Grok Early Acces',
    'Edit post',
    'Longer posts',
    'Undo posts',
    'Post longer videos',
    'Top Articles',
    'Reader',
    'Background video playback',
    'Download videos',
    'No Ads in For You and Following',
    'Largest reply boost',
  ];

  List CreatorHub = [
    'Get paid to post',
    'Creator Subscriptions',
    'X Pro',
    'Media Studio',
    'Analytics',
  ];

  List Security = [
    'Checkmark',
    'Encrypted direct messages',
    'ID verification',
    'SMS two-factor authentication',
  ];

  List Customization = [
    'App Icons',
    'Bookmark folders',
    'Customize navigation',
    'Highlights tab',
    'Hide your likes',
    'Hide your checkmark',
    'Hide your subscriptions',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shape: const Border(bottom: BorderSide(color: Colors.white12)),
        title: Text(
          'Subscribe',
          style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(12)),
                  height: 80,
                  width: 360,
                  child: Center(
                    child: Text(
                      'Premium+',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                BenefitBox(
                  title: 'Enhanced Experience',
                  daftar: Experience,
                ),
                const SizedBox(
                  height: 16,
                ),
                BenefitBox(
                  title: 'Creator Hub',
                  daftar: CreatorHub,
                ),
                const SizedBox(
                  height: 16,
                ),
                BenefitBox(
                  title: 'Verification & Security',
                  daftar: Security,
                ),
                const SizedBox(
                  height: 16,
                ),
                BenefitBox(
                  title: 'Customization',
                  daftar: Customization,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
       
        extendedPadding: const EdgeInsets.all(120),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        label: Text(
          'Starting at Rp 349.000,00',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Chekclist extends StatelessWidget {
  final String benefit;
  const Chekclist({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(benefit),
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      ],
    );
  }
}

class BenefitBox extends StatelessWidget {
  final String title;
  final List daftar;
  const BenefitBox({super.key, required this.title, required this.daftar});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: 360,
        decoration: BoxDecoration(
            color: Colors.white12, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  for (int i = 0; i < daftar.length; i++)
                    Align(
                      heightFactor: 1.5,
                      child: Chekclist(benefit: daftar[i]),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
