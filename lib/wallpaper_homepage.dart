import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/domain/database.dart';

class Wallpaper_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffdeebf2),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                //this is search bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xffedf4f4),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 2,
                              offset: Offset(0.5, 0.5))
                        ]),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Find Wallpaper",
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                border: InputBorder.none),
                          ),
                        ),
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Best Of the Month",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                //wallpaper horizontal
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: imeages.allData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 250,
                        width: 160,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  imeages.allData[index]["bemonth_imeage"]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                //text the color tone
                const Text(
                  "The Color Tone",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                //horizontal colors boxex
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      colorhorizontal(color: Colors.red), // Red
                      colorhorizontal(color: Colors.orange), // Orange
                      colorhorizontal(color: Colors.yellow), // Yellow
                      colorhorizontal(color: Colors.green), // Green
                      colorhorizontal(color: Colors.blue), // Blue
                      colorhorizontal(color: Colors.indigo), // Indigo
                      colorhorizontal(color: Colors.purple), // Purple (Violet)
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Categories",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                //categories grid view
                SizedBox(
                  height: 400,
                  child: GridView.extent(
                    physics: const NeverScrollableScrollPhysics(),
                    maxCrossAxisExtent: 300,
                    scrollDirection: Axis.vertical,
                    crossAxisSpacing: 10,
                    //use for getting space in column
                    mainAxisSpacing: 10,
                    //use for getting space in row
                    children: [
                      categoriesstack(categoriName: "Abstract"),
                      categoriesstack(categoriName: "Nature"),
                      categoriesstack(categoriName: "galaxy"),
                      categoriesstack(categoriName: "flower"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget colorhorizontal({Color? color}) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: color ?? Colors.black,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            const BoxShadow(
                color: Colors.grey, blurRadius: 3, offset: Offset(2, -1))
          ]),
    );
  }

  Widget categoriesstack({required String categoriName}) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/img1.jpg"),
              fit: BoxFit
                  .cover, // Add this to fit the image within the container
            ),
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              categoriName,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 45,
                  fontFamily: "SlacksideOne"),
            ))
      ],
    );
  }
}
