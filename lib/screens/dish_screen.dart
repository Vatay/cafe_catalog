import 'package:flutter/material.dart';
import 'package:food_delivery/components/dish_card.dart';
import 'package:food_delivery/components/partner_menu.dart';
import 'package:food_delivery/components/partner_title.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/demo_data.dart';

class DishScreen extends StatelessWidget {
  const DishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(
                'Ресторан та страви',
                style: TextStyle(
                  fontSize: 20,
                  color: kMainColor,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              floating: true,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: PartnerTitle(card: demoMediumCardData[0]),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(),
            ),
            SliverToBoxAdapter(
              child: PartnerMenu(dishs: demoDish),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: List.generate(
                    demoDish.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: DishCard(card: demoDish[index]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
