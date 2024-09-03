import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swan/core/globel_veriables.dart';
import '../core/asset_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> size = [240, 120, 120, 240];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Image.asset(
                      AssetConstants.logo,
                      height: 50,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 25,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          AssetConstants.cartLogo,
                          width: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage(AssetConstants.banner),
                    fit: BoxFit.fill,
                    opacity: 0.8,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "LIU·JO",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Center(
                              child: Text(
                                "Shop Now",
                                style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    buildRow(
                      "Our Brands",
                          () {},
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildRow(
                      "Our Products",
                          () {},
                    ),
                  ),
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AssetConstants.logo1,
                        ),
                      ),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ProductImageWidget(
                          image: AssetConstants.banner,
                          margin: EdgeInsets.only(top: 50, right: 30),
                          angle: -15,
                        ),
                        ProductImageWidget(
                          image: AssetConstants.banner,
                          margin: EdgeInsets.all(0),
                        ),
                        ProductImageWidget(
                          image: AssetConstants.banner,
                          margin: EdgeInsets.only(top: 50, left: 30),
                          angle: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    buildRow(
                      "Suggested For You",
                          () {},
                    ),
                    SizedBox(
                      height: 265,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: imageCard(230, 160),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Transform.rotate(
                  angle: 2 * pi / 180,
                  child: Container(
                    color: Color.fromRGBO(65, 30, 74, 1),
                    height: 40,
                    width: double.infinity,
                    child: Center(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Text(
                              "  New Arrivals   * ",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 450,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: size.length,
                        itemBuilder: (context, index) {
                          return imageCard(size[index], 170);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    buildRow(
                      "Bestsellers",
                          () {},
                    ),
                    SizedBox(
                      height: 265,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: imageCard(230, 160),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: width*.4,top: height*.01),
                child: Text('Trending Categories',style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(
                  height: 340,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(), // Prevents internal scrolling
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 10, // Space between columns
                      mainAxisSpacing: 10, // Space between rows
                      childAspectRatio: 0.7, // Aspect ratio of the grid items
                    ),
                    itemCount: 6, // Number of items in the grid
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.blue, // Background color for each container
                          borderRadius: BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Center(
                          child: Text(
                            'Item ${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: width*.35,top: height*.01),
                child: Text('Shop Exclusive Deals',style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  // Header Image
                  Container(
                    height: 200,
                    child: Image.asset('assets/images/Group 25.png', fit: BoxFit.cover),
                  ),

                 Container(
                   height: height*.2,
                   width: width*.7,
                   child: Image.asset('assets/images/Screenshot_2023-06-17-10-52-04-98_c06d73ca3bfa20afcf143c32019f8151 2.png'),
                 ),

                  // Products
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.7,
                      children: [
                        _buildProductCard(
                          imageUrl: 'assets/images/product1.jpg',
                          title: 'Winter Fit',
                          price: 'OMR 76.000',
                          discount: '50% OFF',
                        ),
                        _buildProductCard(
                          imageUrl: 'assets/images/product2.jpg',
                          title: 'Winter Fit',
                          price: 'OMR 76.000',
                          discount: '50% OFF',
                        ),
                        _buildProductCard(
                          imageUrl: 'assets/images/product3.jpg',
                          title: 'Flash Sale',
                          price: 'OMR 76.000',
                          discount: '50% OFF',
                        ),
                      ],
                    ),
                  ),

                  // View All Button
                  Text(
                    'View All',
                    style: TextStyle(decoration: TextDecoration.underline,color: Colors.purple
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(right: width*.57,top: height*.01),
                child: Text('Best of Swan',style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Container(
                width: width,
                height: height * .4,
                child: Image.asset(
                  'assets/images/Snapinsta 29.png',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: width*.5,top: height*.01),
                child: Text('Top Accessories',style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(
                height: 340,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(), // Prevents internal scrolling
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: 10, // Space between columns
                      mainAxisSpacing: 10, // Space between rows
                      childAspectRatio: 0.7, // Aspect ratio of the grid items
                    ),
                    itemCount: 6, // Number of items in the grid
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.blue, // Background color for each container
                          borderRadius: BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Center(
                          child: Text(
                            'Item ${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: width*.53,top: height*.01),
                child: Text('Our Best Picks',style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Container(
                width: width,
                height: height * .3,
                child: Stack(
                  children: [
                    // Base image
                    Image.asset(
                      'assets/images/Group 192.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    // First overlay image
                    Padding(
                      padding:  EdgeInsets.only(bottom: 100),
                      child: Positioned(
                        left: 20,
                        child: Image.asset(
                          'assets/images/Mask group2.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    // Second overlay image
                    Positioned(
                      bottom: 30,
                      right: 175,
                      child: Image.asset(
                        'assets/images/Group 12.png',
                        width: 170,
                        height: 150,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox( height: height*.02,),
              Container(
                width: width,
                height: height * .3,
                child: Stack(
                  children: [
                    // Base image
                    Image.asset(
                      'assets/images/Group 194.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    // First overlay image
                    Padding(
                      padding:  EdgeInsets.only(bottom: 100),
                      child: Positioned(
                        left: 20,
                        child: Image.asset(
                          'assets/images/Mask group1.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    // Second overlay image
                    Positioned(
                      bottom: 30,
                      right: 175,
                      child: Image.asset(
                        'assets/images/Group 27.png',
                        width: 170,
                        height: 150,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox( height: height*.02,),
              Container(
                width: width,
                height: height * .3,
                child: Stack(
                  children: [
                    // Base image
                    Image.asset(
                      'assets/images/Group 196.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    // First overlay image
                    Padding(
                      padding:  EdgeInsets.only(bottom: 100),
                      child: Positioned(
                        left: 20,
                        child: Image.asset(
                          'assets/images/Mask group.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    // Second overlay image
                    Positioned(
                      bottom: 30,
                      right: 175,
                      child: Image.asset(
                        'assets/images/Group 28.png',
                        width: 170,
                        height: 150,
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  /// Image card
  Column imageCard(double height, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Icon(
                Icons.favorite_border,
                size: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Text(
          "Pennyblack Brown Black",
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 11,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "OMR 75.000",
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  /// Heading row
  Row buildRow(String heading, VoidCallback onTap) {
    return Row(
      children: [
        Text(
          heading,
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text(
            "View All",
            style: GoogleFonts.rubik(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

/// Product Image Widget
class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
    required this.image,
    this.angle = 0,
    required this.margin,
  });

  final String image;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: 130,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}


Widget _buildProductCard({
  required String imageUrl,
  required String title,
  required String price,
  required String discount,
}) {
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl, height: 150, width: double.infinity, fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '$discount',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 4),
              Text(
                price,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}





