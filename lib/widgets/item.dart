import 'package:flutter/material.dart';

import '../screens/product_details_screen.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
    required this.context,

  });

  final BuildContext context;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => ProductDescScreen())),
      child: AspectRatio(
          aspectRatio: 4.4 / 8,
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(240, 240, 245, 1),
                borderRadius: BorderRadius.circular(18)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.046,
                  ),
                  const Text(
                    'Persol \nPO33214S',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        height: 1.2,
                        fontFamily: 'Jellee-Roman',
                        letterSpacing: .2,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.017,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.198,
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/pngwing.png'))),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.017,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 5, bottom: 5, right: 10),
                      child: Text(
                        'Streetwear and casual sneakers are every man’s answer to function and fashion footwear.',
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 15,
                            fontFamily: '',
                            fontWeight: FontWeight.w600,
                            height: 1.4),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      '\$202.99',
                      style: TextStyle(
                          fontFamily: 'Jellee-Roman',
                          color: Colors.black,
                          height: 1.1,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 15),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(255, 0, 82, 1),
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
                  )
                ]),
          )),
    );
  }
}
