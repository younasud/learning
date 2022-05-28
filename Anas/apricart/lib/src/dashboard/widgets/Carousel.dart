import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  var imagesArray = [
    'assets/images/product_1.jpg',
    'assets/images/product_1.jpg',
    'assets/images/product_1.jpg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
            itemCount: imagesArray.length,
            itemBuilder: (context, index, realindex) {
              final urlImage = imagesArray[index];
              return buildImage(urlImage, index);
            },
          ),
        ),
        const SizedBox(height: 10),
        buildIndicators(),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) => Image.asset(
        urlImage,
        fit: BoxFit.fitWidth,
        width: MediaQuery.of(context).size.width,
      );

  Widget buildIndicators() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagesArray.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: Color.fromRGBO(241, 91, 91, 1),
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
}
