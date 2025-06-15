import 'package:ecommrece_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class CarModel extends ChangeNotifier{
  String imagePath;
  String carName;
  String carPrice;
  String carDescription;

  CarModel({
    required this.imagePath,
    required this.carName,
    required this.carPrice,
    required this.carDescription
});

  static List<CarModel> getCars(){
    List<CarModel> cars = [];

    cars.add(
      CarModel(imagePath: 'assets/ford/ford_classic.jpg',
          carName: 'Ford Classic',
          carPrice: '\$60,000',
          carDescription: 'Awesome car comes with a V12 engine and a\nunique color.')
    );

    cars.add(
        CarModel(imagePath: 'assets/ford/ford_mustang.jpg',
            carName: 'Ford Mustang',
            carPrice: '\$90,000',
            carDescription: 'Awesome car comes with a V12 engine and a unique color')
    );

    cars.add(
        CarModel(imagePath: 'assets/ford/ford_raptor.jpg',
            carName: 'Ford Raptor',
            carPrice: '\$70,000',
            carDescription: 'Awesome car comes with a V12 engine and a unique color')
    );

    cars.add(
        CarModel(imagePath: 'assets/ford/ford_suv.jpg',
            carName: 'Ford Expedition 2018',
            carPrice: '\$50,000',
            carDescription: 'Awesome car comes with a V12 engine and a unique color')
    );

    cars.add(
        CarModel(imagePath: 'assets/ford/ford_old.jpg',
            carName: 'Ford Model A',
            carPrice: '\$90,000',
            carDescription: 'Awesome car comes with a V12 engine and a unique color')
    );

    return cars;
  }

}