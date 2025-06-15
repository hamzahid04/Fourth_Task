import 'package:ecommrece_app/pages/HomePage.dart';
import 'package:ecommrece_app/utils/my_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  void goToApp(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: SvgPicture.asset('assets/icons/ford_logo.svg',
              height: 140,
              width: 140,)
          ),
         Center(
           child: Column(
             children: [
               const Text('Drive the Legacy',
                 style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.black
                 ),
               ),
               SizedBox(height: 20),
               const Text('Discover powerful design, cutting-edge tech,'
                   ' and the spirit of the road — all in one app.',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.normal,
                   color: Colors.grey,
                 ),
               ),
               SizedBox(height: 50,),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                 },
                 child: Container(
                   decoration: BoxDecoration(
                       color: Colors.black,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 100, right: 100, top: 15, bottom: 15),
                     child: Text('Explore Ford',
                     style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                       color: Colors.white
                     ),),
                   ),
                 )
               )
             ],
           ),
         )
        ],
      ),
    );
  }
}
