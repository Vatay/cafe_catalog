import 'package:flutter/material.dart';
import 'package:food_delivery/components/partner_card.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/demo_data.dart';

class PartnersScreen extends StatelessWidget {
  const PartnersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Text(
              'Наші партнери',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            floating: true,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: defaultPadding,
                left: defaultPadding,
                right: defaultPadding,
              ),
              child: Column(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => PartnerCard(
                    card: demoMediumCardData[index],
                    onTab: () {
                      Navigator.of(context).pushNamed('/dishs');
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
