import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../resources/resource.dart';

class carousel extends StatefulWidget {
  const carousel({Key? key}) : super(key: key);

  @override
  State<carousel> createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  var imagesArray = [
    'assets/images/product_1.jpg',
    'assets/images/product_2.jpg',
    'assets/images/product_3.jpg',
    'assets/images/product_4.jpg',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider.builder(
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
        const SizedBox(height: 10),
        buildIndicators(),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) => SizedBox(
        width: MediaQuery.of(context).size.width / 1.1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget buildIndicators() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagesArray.length,
        effect: ExpandingDotsEffect(
          activeDotColor: R.colors.red,
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
}
