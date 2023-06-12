import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class ProductDescScreen extends StatefulWidget {
  @override
  _ProductDescScreenState createState() => _ProductDescScreenState();
}

class _ProductDescScreenState extends State<ProductDescScreen> {
  final items = [
    Image.asset('assets/Persol-1.jpg'),
    Image.asset('assets/pngwing.png'),
    Image.asset('assets/Persol-1.jpg'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
     
        appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 18,top: 35),
            child:Image(
         
                   color: Colors.black87,
                    image: AssetImage("assets/Search.png"),
                  )
          )
          ],
          leading: Padding(
              padding: EdgeInsets.only(right: 0,top: 35),
            child:Image(
                   color: Colors.black87,
                    image: AssetImage("assets/back.png"),
                  )
          )
          
          ),
    
     
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
                height: screenHeight / 4,
                width: screenWidth,
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.3,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                      items: items,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    DotsIndicator(
                      decorator: DotsDecorator(
                        size: const Size.square(6.0),
                        activeColor: Colors.black,
                        activeSize: const Size(24.0, 7.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      dotsCount: items.length,
                      position: currentIndex,
                    )
                  ],
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15),
            child: Text("Persol PO3214S",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 23,
                  fontFamily: 'Jellee-Roman',
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(70, 71, 55, 1)),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(108, 27, 33, 1)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "PRODUCT DETAILS",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 17.0, right: 15),
            child: Text(
              "Persol sunglasses are among the most well re-spected and distinguished eyewear brands in the world.",
              style: TextStyle(color: Colors.grey, height: 1.4, fontFamily: ''),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "DELIVERY",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                      fontFamily: ''),
                ),
              ),
             const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
              )
            ],
          ),
         const SizedBox(height: 12),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 15.0),
                child: Text(
                  "RATING & REVIEWS",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontFamily: ''),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
              )
            ],
          ),
           SizedBox(height: screenHeight*0.046),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Container(
                  height: screenHeight*0.033,
                  width: screenWidth*0.234,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child:const Center(
                      child: Text(
                    "-    2    +",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                child: Text("\$202.30",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        color: Colors.black,
                        fontSize: 25)),
              ),
            ],
          ),
          SizedBox(height: screenHeight*0.08),
          Center(
            child: Padding(
              padding:const EdgeInsets.only(bottom: 30, left: 15, right: 15),
              child: SizedBox(
                height: screenHeight*0.058,
                width: screenWidth,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(255,0,82,1),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    child: const Text(
                      'Add To Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Jellee-Roman',
                          fontWeight: FontWeight.w100),
                    )),
              ),
            ),
          )
        ],
      )),
    );
  }
}
