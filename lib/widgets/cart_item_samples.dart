import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {
  List imgList = ["Warm Jacket", "Black T-Shirt", "Black Pant"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < imgList.length; i++)
          Container(
            height: 110,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 224, 224),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/${imgList[i]}.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        imgList[i],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "Best Selling",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        "\$300.54",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFD725A),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.delete, color: Colors.redAccent),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7A),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(CupertinoIcons.minus,
                                size: 18, color: Colors.redAccent),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "01",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7A),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(CupertinoIcons.plus,
                                size: 18, color: Colors.redAccent),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
