// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dblue = Color.fromARGB(255, 53, 154, 142);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotel App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: [
          const SearchSection(),
          Expanded(
            child: HotelSection(),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      title: Text(
        "Explore",
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {},
        color: const Color.fromARGB(255, 10, 9, 9),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_border_outlined),
          onPressed: () {},
          color: const Color.fromARGB(255, 10, 9, 9),
        ),
        IconButton(
          icon: const Icon(Icons.place),
          onPressed: () {},
          color: const Color.fromARGB(255, 10, 9, 9),
        ),
      ],
      centerTitle: true,
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      color: const Color.fromARGB(255, 233, 230, 230),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1.0,
                        blurRadius: 5.0,
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Ottawa',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: dblue,
                ),
                child: const Icon(
                  Icons.search,
                  size: 30,
                  color: Color.fromARGB(255, 253, 251, 251),
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                width: 150,
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text(
                    'Choose date',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 1),
                  Text(
                    '12 Dec - 22 Dec',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                width: 150,
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text(
                    'Number of Rooms',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 1),
                  Text(
                    '1 Room - 2 Adults',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  HotelSection({super.key});

  final List hotelList = [
    {
      'title': 'Hotel 1',
      'place': 'Place 1',
      'review': '4.9',
      'picture': 'images/1545743703_WxH.webp',
      'price': '\100',
      'distance': '1 km',
    },
    {
      'title': 'Hotel 2',
      'place': 'Place 2',
      'review': '4.7',
      'picture': 'images/08-hotel-du-palais-biarritz.jpg',
      'price': '\150',
      'distance': '2 km',
    },
    {
      'title': 'Hotel 3',
      'place': 'Place 3',
      'review': '4.6',
      'picture': 'images/ice-351381-118355831-908971.jpg',
      'price': '\120',
      'distance': '1.5 km',
    },
    {
      'title': 'Hotel 4',
      'place': 'Place 4',
      'review': '4.8',
      'picture': 'images/hotel-praia-dourada-servicios-1229cd84.jpg',
      'price': '\200',
      'distance': '3 km',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '530 hotels found',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'Filters',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.sort_rounded),
                iconSize: 24,
                color: dblue,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              return HotelCard(hotelList[index]);
            },
          ),
        ),
      ],
    );
  }
}

class HotelCard extends StatelessWidget {
  final Map hotelData;

  const HotelCard(this.hotelData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 270,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 6,
            blurRadius: 5.3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
              image: DecorationImage(
                image: AssetImage(hotelData['picture']),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    child: MaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.favorite_outline_outlined,
                    size: 20,
                    color: const Color.fromARGB(255, 252, 255, 255),
                  ),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '\$${hotelData['price']}',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${hotelData['place']} to city',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.place, size: 20, color: dblue),
                    Text(
                      hotelData['distance'],
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Text(
                  '/per night',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(2)),
              Icon(
                Icons.star_rate,
                size: 14,
                color: dblue,
              ),
              Icon(
                Icons.star_rate,
                size: 14,
                color: dblue,
              ),
              Icon(
                Icons.star_rate,
                size: 14,
                color: dblue,
              ),
              Icon(
                Icons.star_rate_outlined,
                size: 14,
                color: dblue,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 9),
                child: Text(
                  '${hotelData['review']} reviews',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
