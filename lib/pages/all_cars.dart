import 'package:ecommrece_app/models/cars_model.dart';
import 'package:ecommrece_app/pages/HomePage.dart';
import 'package:ecommrece_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class ShowAllCars extends StatefulWidget {
  const ShowAllCars({super.key});

  @override
  State<ShowAllCars> createState() => _ShowAllCarsState();
}

class _ShowAllCarsState extends State<ShowAllCars> {

  List<CarModel> cars = [];

  void initState(){
    cars = CarModel.getCars();
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return Scaffold(
      appBar: _appBar(context),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.black
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Image.asset(cars[index].imagePath,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0)
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(cars[index].carName,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(cars[index].carDescription,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[600]
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(cars[index].carPrice,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[600]
                                ),),
                            ),
                            GestureDetector(
                              onTap: (){

                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey[600],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0)
                                    )
                                ),
                                child: Icon(
                                    Icons.add,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 20,),
          itemCount: cars.length),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Text('Inventory'),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
      }, icon: Icon(Icons.arrow_back_ios_new)),
    );
  }
}
