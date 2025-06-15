import 'package:flutter/material.dart';

import 'cars_model.dart';

// class Cart extends ChangeNotifier{
//   //List of items in user cart
//   List<CarModel> userCart = [];
//   //list of cars for sale
//
//   //get cart
//   List<CarModel> getUserCart(){
//     return userCart;
//   }
//   //User can add to cart
//   void addItemsToCart(CarModel cars){
//     userCart.add(cars);
//     notifyListeners();
//   }
//   //User can delete from cart
//   void removeFromCart(CarModel cars){
//     userCart.remove(cars);
//     notifyListeners();
//   }
// }
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Cart();
  }
}
