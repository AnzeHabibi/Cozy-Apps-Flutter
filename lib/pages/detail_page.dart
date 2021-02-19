import 'package:cozy_place/pages/error_page.dart';
import 'package:cozy_place/widgets/facilities_item.dart';
import 'package:flutter/material.dart';
import 'package:cozy_place/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LaunchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                "assets/thumbnail.png",
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 328,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Note Title
                                  Text(
                                    "Kuretakeso Hott",
                                    style:
                                        blackTextStyle.copyWith(fontSize: 22),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      //Note : Price
                                      Text(
                                        "\$52 ",
                                        style: purpleTextStyle.copyWith(
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "/ Month",
                                        style: greyTextStyle.copyWith(
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                //Note : Rating
                                children: [
                                  Image.asset("assets/icon_star.png",
                                      width: 20),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset("assets/icon_star.png",
                                      width: 20),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset("assets/icon_star.png",
                                      width: 20),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset("assets/icon_star.png",
                                      width: 20),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset("assets/icon_star.png",
                                      width: 20, color: Color(0xff989BA1)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        //Note : Main Facilities
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            "Main Facilities",
                            style: regularTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilitiesItem(
                                  imageUrl: "assets/icon_kitchen.png",
                                  name: "Kitchen",
                                  total: 2),
                              FacilitiesItem(
                                  imageUrl: "assets/icon_bedroom.png",
                                  name: "Bedroom",
                                  total: 3),
                              FacilitiesItem(
                                  imageUrl: "assets/icon_cupboard.png",
                                  name: "Big Lemari",
                                  total: 3),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //Note : Photo
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            "Photo",
                            style: regularTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                            height: 90,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                SizedBox(width: 24),
                                Image.asset("assets/photo1.png",
                                    width: 110, height: 100, fit: BoxFit.cover),
                                SizedBox(width: 24),
                                Image.asset("assets/photo2.png",
                                    width: 110, height: 100, fit: BoxFit.cover),
                                SizedBox(width: 24),
                                Image.asset("assets/photo3.png",
                                    width: 110, height: 100, fit: BoxFit.cover),
                                SizedBox(width: 24),
                                Image.asset("assets/photo1.png",
                                    width: 110, height: 100, fit: BoxFit.cover),
                              ],
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        //Note : Map
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            "Location",
                            style: regularTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Jln. Kappan Sukses No. 20\nPalembang",
                                  style: greyTextStyle.copyWith(
                                    fontSize: 14,
                                  )),
                              InkWell(
                                  onTap: () {
                                    // LaunchUrl(
                                    //     "https://www.google.com/maps/place/Jl.+Kapten+Abdullah,+Plaju+Ilir,+Kec.+Plaju,+Kota+Palembang,+Sumatera+Selatan/@-3.0005825,104.8140079,17z/data=!3m1!4b1!4m5!3m4!1s0x2e3b9d66186b8821:0xd8fe9c358921b45!8m2!3d-3.0005879!4d104.8161966");
                                    LaunchUrl("qwert");
                                  },
                                  child: Image.asset("assets/btn_map.png",
                                      width: 40))
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          width: MediaQuery.of(context).size.width - (2 * 24),
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {
                              LaunchUrl("tel:+628111999940");
                            },
                            child: Text("Book Now",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 18,
                                )),
                            color: purpleColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: edge, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/btn_back.png",
                        width: 40,
                      ),
                    ),
                    Image.asset(
                      "assets/btn_wishlist.png",
                      width: 40,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
