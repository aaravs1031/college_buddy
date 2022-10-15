import 'package:college_buddy/Model/SwipeCardModel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../SwipeCardData.dart';

int activeIndex = 0;
void changeactiveindex(int id) {
  activeIndex = id;
}

class SwipeCardWidget extends StatefulWidget {
  const SwipeCardWidget({Key? key}) : super(key: key);

  @override
  State<SwipeCardWidget> createState() => _SwipeCardWidgetState();
}

class _SwipeCardWidgetState extends State<SwipeCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
            items: SwipeCardDataList.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Opacity(
                      opacity: 0.5,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 50.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(47.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment(0.0, 0.6),
                            colors: <Color>[
                              Color.fromRGBO(255, 255, 255, 0.6),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                          ),
                        ),
                        child: Text(SwipeCardDataList[i.id].title),
                      ),
                    );
                  },
                );
              },
            ).toList(),
            options: CarouselOptions(
              height: 550.0,
              enableInfiniteScroll: true,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              onPageChanged: ((i, reason) {
                int index = i;
                print(index);
                setState(() {
                  activeIndex = index;
                });
              }),
            )),
        SliderWidget()
      ],
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => SliderWidgetState();
}

class SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: SwipeCardDataList.length,
      effect: SwapEffect(
        dotWidth: 20,
        dotHeight: 20,
        activeDotColor: Colors.red,
        dotColor: Colors.black12,
      ),
    );
  }
}
