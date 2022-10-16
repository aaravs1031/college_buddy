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

// final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
//   onPrimary: Colors.black87,
//   primary: Colors.grey[300],
//   minimumSize: Size(88, 36),
//   padding: EdgeInsets.symmetric(horizontal: 16),
//   shape: const RoundedRectangleBorder(
//     borderRadius: BorderRadius.all(Radius.circular(2)),
//   ),
// );

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
                  return Container(
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(47.0)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment(0.0, 0.6),
                        colors: <Color>[
                          Color.fromRGBO(255, 255, 255, 0.36969),
                          Color.fromRGBO(255, 255, 255, 0.156387),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          SwipeCardDataList[i.id].title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color.fromRGBO(248, 188, 74, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          SwipeCardDataList[i.id].content,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(226, 190, 148, 1),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        ElevatedButton(
                          //style: raisedButtonStyle,
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(47)),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                                ('/${SwipeCardDataList[i.id].title}'));
                          },
                          child: Text('Go to ${SwipeCardDataList[i.id].title}'),
                        ),
                      ],
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
          ),
        ),
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
