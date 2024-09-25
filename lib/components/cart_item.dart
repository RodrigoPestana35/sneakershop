import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.image),
      title: Text(widget.shoe.name),
      subtitle: Text("Price: ${widget.shoe.price}€"),
    );
  }
}
