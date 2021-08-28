import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main(){
   runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData.dark(),
       home: slider(),
     )
   );
}

class slider extends StatelessWidget {

  final List<String> imageList = [
    "https://wenr.wes.org/wp-content/uploads/2019/09/iStock-1142918319_WENR_Ranking_740_430.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOh2gJ9eXdaox-uRpAz3oqWtjDlJ3k0AukWgxlzXg07nH71OpRzx20BZG9JcxkxH3loZc&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnj7GvtqijGyb2focyFejrmqJk1g_Bcjl2qg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV7vJmRomAsYtE3JazzOxK61x63rrsfilphA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0YpfIsnCgTkcz39Z_4-EzgbDsDqh9T0wPfA&usqp=CAU",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlay: true,
          ),
          items: imageList.map((e)=> ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(e,
                width: 1050.0,
                height: 350.0,
                fit: BoxFit.cover,
                )
              ],
            ),
          )).toList(),
        ),
      ),
    );
  }
}
