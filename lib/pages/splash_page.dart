import 'package:cozy_place/pages/home_page.dart';
import 'package:cozy_place/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
        body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/splash_image.png")),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/logo.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Find Cozy House\nto Stay and Happy",
                        style: blackTextStyle.copyWith(fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Stop membuang banyak waktu\npada tempat yang tidak habitable",
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: 50,
                        width: 210,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          color: purpleColor,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text(
                            "Explore Now",
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
