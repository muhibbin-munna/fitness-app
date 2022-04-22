import 'package:fitness_app/constants.dart';
import 'package:fitness_app/ui/pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  late CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'assets/img2.jpg',
    'assets/img2.jpg',
    'assets/img2.jpg',

  ];
  var lvlList = [
    'BEGINNER',
    'INTERMEDIATE ',
    'ADVANCED',

  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: const Text('CHOOSE A LEVEL'),
        iconTheme: IconThemeData(color: kTextColor),
        backgroundColor: kSecondaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.of(context)
                              .push(new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ThirdPage(),
                          ));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imgList[itemIndex]),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),

                          ),

                          child: Center(child: Text(lvlList[itemIndex],style: TextStyle(color: kTextColor, fontSize: 45, fontWeight: FontWeight.w900, ))),

                        ),
                      );
                    },

                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height - 150,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    // autoPlay: false,
                    // reverse: false,
                    enableInfiniteScroll: false,
                    // autoPlayInterval: Duration(seconds: 2),
                    // autoPlayAnimationDuration:
                    // Duration(milliseconds: 2000),
                    // pauseAutoPlayOnTouch: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    })),
          ),
        ],
      ),
    );
  }
}
