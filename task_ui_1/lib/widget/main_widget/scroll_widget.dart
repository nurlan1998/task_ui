import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget{
  const ScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
            child: Image.asset("assets/hotel.jpg",fit: BoxFit.cover,),
          ),
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
            child: Image.asset("assets/hotel.jpg",fit: BoxFit.cover,),
          ),
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
            child: Image.asset("assets/course.jpg",fit: BoxFit.cover,),
          ),
      ],
      options: CarouselOptions(
        height: 300.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}