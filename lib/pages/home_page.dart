import 'package:cozy_place/models/city.dart';
import 'package:cozy_place/models/space.dart';
import 'package:cozy_place/models/tips.dart';
import 'package:cozy_place/widgets/bottom_navbar_item.dart';
import 'package:cozy_place/widgets/city_card.dart';
import 'package:cozy_place/widgets/space_card.dart';
import 'package:cozy_place/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy_place/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24
          ),
          child: ListView(
            children: [
              //Note : Tittle/Header
              Padding(
                padding: const EdgeInsets.only(
                  left:24
                ),
                child: Text("Explore Now", style: blackTextStyle.copyWith(
                  fontSize:24
                ),
                ),
              ),
              SizedBox(
                height:2
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left:24
                ),
                child: Text("Mencari kosan yang cozy", style: greyTextStyle.copyWith(
                  fontSize:16
                ),),
              ),
              SizedBox(
                height:30
              ),
              //Note: Popular City
              Padding(
                padding: const EdgeInsets.only(
                  left:24
                ),
                child: Text("Popular Cities", style: regularTextStyle .copyWith(
                  fontSize:16
                ),),
              ),
              SizedBox(
                height:16
              ),
              Container(
                height: 150,
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width:24),
                    CityCard(
                      City(
                        id: 1,
                        name: "Jakarta",
                        imageUrl: "assets/city1.png"
                      )
                    ),
                    SizedBox(width:24),
                    CityCard(
                      City(
                        id: 2,
                        name: "Bandung",
                        imageUrl: "assets/city2.png",
                        isPopular: true
                      )
                    ),
                    SizedBox(width:24),
                    CityCard(
                      City(
                        id: 3,
                        name: "Surabaya",
                        imageUrl: "assets/city3.png"
                      )
                    ),
                    SizedBox(width:24),
                  CityCard(
                      City(
                        id: 3,
                        name: "Palembang",
                        imageUrl: "assets/city4.png"
                      )
                    ),
                    SizedBox(width:24),
                    CityCard(
                      City(
                        id: 3,
                        name: "Aceh",
                        imageUrl: "assets/city5.png",
                        isPopular: true
                      )
                    ),
                    SizedBox(width:24),
                    CityCard(
                      City(
                        id: 3,
                        name: "bogor",
                        imageUrl: "assets/city6.png"
                      )
                    ),
                    SizedBox(width:24),
                  ],),   
              ),
              SizedBox(
                height: 30,),
                //Note : Recommended Space
              Padding(
                padding: const EdgeInsets.only(
                  left:24
                ),
                child: Text("Recommended Space", style: regularTextStyle .copyWith(
                  fontSize:16
                ),),
              ),
              SizedBox(
                height: 16,),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal:24
                ),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                        id:1,
                        imageUrl: "assets/space1.png",
                        name: "Kuretakeso Hott",
                        price: 52,
                        city: "Bandung",
                        country: "Jawa Barat",
                        rating: 4,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id:2,
                        name: "Roemah Nenek",
                        imageUrl: "assets/space2.png",
                        price: 11,
                        city: "Dramaga",
                        country: "Bogor",
                        rating: 5,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id:3,
                        name: "Rumah Biyyu",
                        imageUrl: "assets/space3.png",
                        price: 20,
                        city: "Pondok Bambu",
                        country: "Jakarta",
                        rating: 3,
                      ),
                    ),
                  ],),
              ),
              SizedBox(
                height:30
              ),
              //Note: Tips & Guidelines
              Padding(
                padding: const EdgeInsets.only(
                  left:24
                ),
                child: Text("Tips & Guidelines", style: regularTextStyle .copyWith(
                  fontSize:16
                ),),
              ),
              SizedBox(
                height:16
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal:24
                ),
                child: Column(
                  children: [
                    TipsCard(
                      Tips(
                        id: 1,
                        title: "City Guidelines",
                        imageUrl: "assets/tips1.png",
                        updatedAt: "20 Apr")
                    ),
                    SizedBox(
                      height:20
                    ),
                    TipsCard(
                      Tips(
                        id: 2,
                        title: "Jakarta Fairship",
                        imageUrl: "assets/tips2.png",
                        updatedAt: "11 Dec")
                    ),
                  ],
                )
              ),
              SizedBox(
                height: 74
              ),
              
            ],),
        )
      ),
      floatingActionButton: Container(
                height: 65,
                width: MediaQuery.of(context).size.width - (2*24),
                margin: EdgeInsets.symmetric(
                  horizontal:24,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F8),
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbarItem(
                      imageUrl: "assets/icon_home.png",
                      isActive: true,
                    ),
                    BottomNavbarItem(
                      imageUrl: "assets/icon_email.png",
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: "assets/icon_card.png",
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: "assets/icon_love.png",
                      isActive: false,
                    ),
                  ],
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}