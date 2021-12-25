import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cati/common/app_colors.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({Key? key}) : super(key: key);

  static final _imgList = [0, 1, 2, 3, 4];

  static final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  static final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Stack(
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                height: 190,
                enlargeCenterPage: true,
                viewportFraction: 0.85,
                onPageChanged: (value, reason) {
                  print(value);
                  _counter.value = value;
                }),
            items: _imgList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return CachedNetworkImage(
                    imageUrl: 'https://i.ibb.co/1ZYNrv2/Mask-Group.png',
                    imageBuilder: (context, imageProvider) => Container(
                      height: 190,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    placeholder: (context, url) => Container(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  );
                },
              );
            }).toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ValueListenableBuilder<int>(
                valueListenable: _counter,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _imgList.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry),
                        child: Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: value == entry
                                  ? AppColors.white
                                  : AppColors.borderCircle.withOpacity(0.5)),
                        ),
                      );
                    }).toList(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
