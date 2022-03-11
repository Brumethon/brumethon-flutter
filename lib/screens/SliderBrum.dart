import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderBrum extends StatefulWidget {
  SliderBrum({Key? key}): super(key: key);

  @override
  State<StatefulWidget> createState() => _SliderBrumState();

}

class _SliderBrumState extends State<SliderBrum> {

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: CarouselSlider(
          options: CarouselOptions(
            disableCenter: true,
          ),
          items: list.map((item) => Container(
            child: Text(item.toString()),
            color: Colors.green,
          )).toList(),
        )
      ),
    );
  }

}