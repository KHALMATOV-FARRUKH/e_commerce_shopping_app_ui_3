import 'package:e_commerce_shopping_app_ui_3/widgets/cart_item_samples.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios, size: 22)),
                    Text("Cart",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                    InkWell(
                        onTap: () {}, child: Icon(Icons.more_horiz, size: 30)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    CartItemSamples(),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Select All",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Checkbox(
                              activeColor: Color(0xFFFD725A),
                              value: true,
                              onChanged: (value) {}),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Payment:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$901.62",
                            style: TextStyle(
                                color: Color(0xFFFD725A),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Cost:',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Text(
                            "\$50.00",
                            style: TextStyle(
                                color: Color(0xFFFD725A),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => CartScreen()));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFFD725A),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
