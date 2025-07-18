import 'package:flutter/material.dart';
import 'package:forms/widgets/appbar.dart';
import 'package:forms/customer_home_page/customer_home_page.dart';
import 'package:lottie/lottie.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,title: "My Cart"),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Center(
            child: Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(
                  236,
                  248,
                  238,
                  1,
                ), // light green background
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Lottie.asset(
                "assets/animations/new_add_to_cart.json",
                height: 200,
                repeat: true,
                reverse: false,
                animate: true,
              ),
              ),
            ),
          ),

          const SizedBox(height: 10),
          Text('Oops !', style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 5),
          Text(
            'Your cart is empty',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CustomerHomePage(snackBarMsg: "",)),
                );
              },
              child: Text(
                'Browse Products',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
