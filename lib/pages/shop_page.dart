import 'package:ecommrece_app/models/Cart.dart';
import 'package:ecommrece_app/models/cars_model.dart';
import 'package:ecommrece_app/pages/all_cars.dart';
import 'package:ecommrece_app/pages/my_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  ShopPage({super.key});


  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  List<CarModel> cars = [];

  void _getCars(){
    cars = CarModel.getCars();
  }

  void getInitState(){
    cars = CarModel.getCars();
  }

  // void addCarToCart(CarModel cars, BuildContext context) { // Add BuildContext here
  //   Provider.of<Cart>(context, listen: false).addItemsToCart(cars);
  //
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Text('Item added to Cart Successfully!'),
  //       content: Text('Check Your Cart'),
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    getInitState();
    return Scaffold(
      body:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: null,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                      ),
                      suffixIcon: Icon(Icons.search, color: Colors.grey,)
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text('everyone flies. some flies longer than others',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Hot Picks 🔥',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ShowAllCars()));
                        },
                        child: Text('See all',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 380,
                // decoration: BoxDecoration(
                //   color: Colors.blue
                // ),
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: cars.length > 3 ? 3 : cars.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)
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
                                        onTap: (){},
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[600],
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10)
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
                    }
                ),
              )
            ],
          ),
    );
  }
}
