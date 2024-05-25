import 'package:flutter/material.dart';
import 'package:nikeapp/model/shoe.dart';

class Cart extends ChangeNotifier {
  //list fo shoes
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan',
      price: '249.99',
      imgPath: 'lib/images/1.png',
      desc: 'Best shoe for a baller premium quality and unique design',
    ),
    Shoe(
      name: 'Air Jordan Red',
      price: '209.99',
      imgPath: 'lib/images/2.png',
      desc: 'Best shoe for a baller premium quality and unique design',
    ),
    Shoe(
      name: 'Nike Air Max',
      price: '199.99',
      imgPath: 'lib/images/3.png',
      desc: 'Best shoe for a baller premium quality and unique design',
    ),
    Shoe(
      name: 'Nike Air',
      price: '149.99',
      imgPath: 'lib/images/4.png',
      desc: 'Best shoe for a baller premium quality and unique design',
    ),
  ];

  //list of items in cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
