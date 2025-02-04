import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/domain/database.dart';

class Categories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _categories_state();
}

class _categories_state extends State<Categories> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    //get the data
    final dataFromAnotherpage =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final categoryName = dataFromAnotherpage["categoriName"];
    final categoryIndex = dataFromAnotherpage["categoriIndex"];
    print(categoryIndex);
    print(categoryName);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
          style: const TextStyle(
              fontSize: 35, fontFamily: "offside", fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                height: 800,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: imeages_categories
                        .allimeages[categoryIndex]["categori_imeages"].length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      //mainAxisExtent: 50,
                      mainAxisSpacing: 10,
                      //use for adding space between row
                      crossAxisSpacing: 10,
                      //use for adding space between column
                    ),
                    itemBuilder: (contex, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  imeages_categories.allimeages[categoryIndex]
                                      ["categori_imeages"][index]),
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
