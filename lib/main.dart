import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_image_slider/indicator/Circle.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Carousal in flutter"),
        ),
        body: Material(
          child: CarousalImageSlider(),
        ),
      ),
    ),
  );
}

class CarousalImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Center(
            child: Container(
                height: size.height*0.4,
                width: size.width,
                child: Carousel(
                  indicatorBarColor: Colors.black.withOpacity(0.2),
                  autoScrollDuration: Duration(seconds: 1),
                  animationPageDuration: Duration(milliseconds: 300),
                  activateIndicatorColor: Colors.black,
                  animationPageCurve: Curves.easeInCubic,
                  indicatorBarHeight: 50,
                  indicatorHeight: 20,
                  indicatorWidth: 20,
                  unActivatedIndicatorColor: Colors.grey,
                  stopAtEnd: false,
                  autoScroll: true,
                  // widgets
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/one.jpg"),
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/two.jpeg"),
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/three.jpg"),
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/forth.jpg"),
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/fifth.jpg"),
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sixth.jpg"),
                        )
                      ),
                    ),
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}