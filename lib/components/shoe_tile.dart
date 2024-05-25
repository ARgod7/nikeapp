import 'package:flutter/material.dart';
import 'package:nikeapp/model/shoe.dart';

class ShoeTile extends StatelessWidget {
  void Function()? onTap;
  Shoe shoe;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 0,
          ),
          //shoe
          Image.asset(
            shoe.imgPath,
            height: 150,
          ),

          //desc
          Text(
            textAlign: TextAlign.center,
            shoe.desc,
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),

          //price + name + button
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      shoe.name,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold),
                    ),

                    //price
                    Text('\$ ' + shoe.price,
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(24),
                          topLeft: Radius.circular(24)),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey[100],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
