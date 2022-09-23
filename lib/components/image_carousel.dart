import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/demo_data.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Stack(
          children: [
            PageView.builder(
              itemCount: demoBigImages.length,
              itemBuilder: (context, index) => Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultPadding),
                ),
                child: Image.asset(
                  demoBigImages[index],
                  fit: BoxFit.cover,
                ),
              ),
              onPageChanged: (value) {
                // print(activeScreen)
                print(value);
                setState(() {
                  _currentPage = value;
                });
              },
            ),
            Positioned(
              bottom: defaultPadding,
              right: defaultPadding,
              child: Row(
                children: List.generate(
                  demoBigImages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding / 4),
                    child: IndicatorDot(
                      isActive: index == _currentPage ? true : false,
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

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 4,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white38,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
