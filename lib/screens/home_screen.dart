import 'package:flutter/material.dart';
import 'package:food_delivery/components/dish_information_card.dart';
import 'package:food_delivery/components/image_carousel.dart';
import 'package:food_delivery/components/section_title.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/demo_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              floating: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Доставка в '.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: kActiveColor),
                  ),
                  Text(
                    'Черкаси',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Фільтр',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: SectiontTitle(
                    title: 'Наші партнери',
                    onTab: () {
                      Navigator.of(context).pushNamed('/partners');
                    }),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: defaultPadding),
                child: Row(
                  children: List.generate(
                    demoMediumCardData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: DishInformationCard(
                        onTab: () {
                          Navigator.of(context).pushNamed('/dishs');
                        },
                        card: demoMediumCardData[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: defaultPadding * 2),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/Banner.png'),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: SectiontTitle(
                    title: 'Топові товари',
                    onTab: () {
                      Navigator.of(context).pushNamed('/partners');
                    }),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: defaultPadding),
                child: Row(
                  children: List.generate(
                    demoMediumCardData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: DishInformationCard(
                        onTab: () {
                          Navigator.of(context).pushNamed('/dishs');
                        },
                        card: demoMediumCardData[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: defaultPadding * 2),
            ),
          ],
        ),
      ),
    );
  }
}
