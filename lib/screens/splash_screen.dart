import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img2.wallspic.com/crops/1/1/2/6/5/156211/156211-rock_concert-digital_art-art-cyberpunk-purple-720x1280.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: screenHeight * 0.28,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const HomeScreen())),
                  child: Container(
                    alignment: Alignment.center,
                    height: screenHeight * 0.07,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28),
                            bottomLeft: Radius.circular(28))),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('SHOPPING NOW ',
                              style: TextStyle(
                                  fontFamily: 'Jellee-Roman',
                                  color: Colors.black)),
                          Icon(Icons.fast_forward_rounded)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
