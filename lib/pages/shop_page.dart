import 'package:flutter/material.dart';
import 'package:nikeapp/components/shoe_tile.dart';
import 'package:nikeapp/model/cart.dart';
import 'package:nikeapp/model/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully Added'),
        content: Text('Check your cart!!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //search
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 24, right: 24, top: 18),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),

                //text
                Padding(
                  padding: const EdgeInsets.only(top: 28, bottom: 24),
                  child: Text(
                    '"All Latest collections over here"',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),

                //hot picks
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending 🔥',
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24),

                //shoe cata
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      return ShoeTile(
                        shoe: shoe,
                        onTap: () => addShoeToCart(shoe),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ));
  }
}
