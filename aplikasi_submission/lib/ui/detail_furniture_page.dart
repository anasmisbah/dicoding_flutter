import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailFurnitureView extends StatefulWidget {
  @override
  State<DetailFurnitureView> createState() => _DetailFurnitureViewState();
}

class _DetailFurnitureViewState extends State<DetailFurnitureView> {
  final CarouselController controller = CarouselController();
  var current = 0;
  final List<String> imgList = [
    'assets/images/detail-furniture.png',
    'assets/images/detail-furniture.png',
    'assets/images/detail-furniture.png',
  ];
  List<Widget> get imageSliders => imgList
      .map(
        (item) => Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Image.asset(item, fit: BoxFit.contain, width: 1000.0),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chair Dacey li - Black",
          style:
              TextStyle(color: Color(0xFF202020), fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset("assets/icons/left.png"),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/icons/cart.png"))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CarouselSlider(
                    items: imageSliders,
                    carouselController: controller,
                    options: CarouselOptions(
                      aspectRatio: 1.3,
                      onPageChanged: (index, reason) {
                        setState(() {
                          current = index;
                        });
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF000000),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Text(
                      "60%",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFA4A8AB),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFF1B1B1B),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFF263C54),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                      color: Color(0xFFBFBFBF),
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    children: [
                      Text(
                        "Share",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 15,
                        child: Image.asset(
                          "assets/icons/filter_white.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.animateToPage(entry.key),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          padding: EdgeInsets.all(1),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: current == entry.key
                                  ? Color(0xFFFE9C8F)
                                  : Color(0xFFACACAC),
                            ),
                          ),
                          child: current == entry.key
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFE9C8F),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                )
                              : SizedBox(),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chair Dacey li - Black",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "\$50.00",
                      style: TextStyle(
                        color: Color(0xFFFE9C8F),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "\$80.00",
                      style: TextStyle(
                        color: Color(0xFFB1ADAD).withOpacity(0.4),
                        fontSize: 13,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 12,
                          child: Image.asset(
                            "assets/icons/star_gold.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 12,
                          child: Image.asset(
                            "assets/icons/star_gold.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 12,
                          child: Image.asset(
                            "assets/icons/star_gold.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 12,
                          child: Image.asset(
                            "assets/icons/star_gold.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 12,
                          child: Image.asset(
                            "assets/icons/star_gold.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 12,
                          child: Image.asset(
                            "assets/icons/star_gold.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("5.0"),
                      ],
                    ),
                    Container(
                      height: 18,
                      child: Image.asset(
                        "assets/icons/heart_grey.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Information Furniture",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    "This sofa Make your leisure time or rest at home ore quality accompanied by the comfort of Grolind 2-seat Sofa's. Read more"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 28,
                      child: Image.asset(
                        "assets/icons/box_info.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "In Stock",
                        style: TextStyle(
                          color: Color(0xFF363636),
                        ),
                      ),
                    ),
                    Text("20+"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      height: 28,
                      child: Image.asset(
                        "assets/icons/box_info.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Sold",
                        style: TextStyle(
                          color: Color(0xFF363636),
                        ),
                      ),
                    ),
                    Text("10"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Image.asset("assets/icons/heart_grey.png"),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                primary: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("ADD TO CHART"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFE9C8F),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
