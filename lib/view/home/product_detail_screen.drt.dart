import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/bloc/product_bloc.dart';
import 'package:project/bloc/product_event.dart';
import 'package:project/bloc/product_state.dart';
import 'package:project/model/product_model.dart';
import 'package:project/util/app_text.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductModel product;
  const ProductDetailScreen({super.key, required this.product});
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  String _selectedSize = "";
  int _selectedColorIndex = 0;
  bool _isFavorite = false;
  void addCart() {
    final quantity = context
        .read<ProductBloc>()
        .state
        .quantity; //use for update ui
    if (_selectedSize.isEmpty) {
      Get.snackbar("Message", "Please select size");
    } else if (_selectedColorIndex.isNull) {
      Get.snackbar("Message", "Please select colors");
    } else {
      context.read<ProductBloc>().add(
        Addcart(
          color: _selectedColorIndex.toString(),
          product: widget.product,
          size: _selectedSize,
          quantity: quantity,
        ),
      );
      log(
        "Code : ${widget.product.code}\nSize:${_selectedSize}\nColor:${_selectedColorIndex.toString()}\nQuantity : ${quantity}",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildAppBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                              widget
                                  .product
                                  .image[_selectedColorIndex], // image for the selected color
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x14000000),
                                blurRadius: 16,
                                offset: Offset(0, -4),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      widget
                                          .product
                                          .category, //call product category
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Color(0xFFF5A623),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        widget.product.rate, //that call rate
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.product.name, // that call name
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Expanded(child: )
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            context.read<ProductBloc>().add(
                                              Decrement(),
                                            );
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      AppText(
                                        text: context
                                            .read<ProductBloc>()
                                            .state
                                            .quantity
                                            .toString(),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            context.read<ProductBloc>().add(
                                              Increment(),
                                            );
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                        //child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "\$${widget.product.oldprice}", // that call old price
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "\$${widget.product.price.toStringAsFixed(2)}", // that call final price
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE53935),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      "\%${widget.product.discount}", // that call discount
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    '100+ Sold',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 18),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Size',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: widget
                                              .product
                                              .size // use map for get data from controller
                                              .map(
                                                (item) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        right: 10,
                                                      ),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      _selectedSize = item;
                                                      setState(() {
                                                        _selectedSize
                                                            .toString();
                                                      });
                                                      log(
                                                        _selectedSize
                                                            .toString(),
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 34,
                                                      height: 34,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white,
                                                        border: Border.all(
                                                          color:
                                                              _selectedSize ==
                                                                  item
                                                              ? Colors.blue
                                                              : Colors.black12,
                                                        ),
                                                        //border: Border.all(color: selected ? Colors.black : Colors.black26),
                                                      ),
                                                      child: Text(
                                                        item,
                                                        style: TextStyle(
                                                          //color: selected ? Colors.white : Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Color',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: widget
                                            .product
                                            .color // use asMap so we keep the index for image/description lookup
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                              final index = entry.key;
                                              final item = entry.value;
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 8,
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _selectedColorIndex =
                                                          index;
                                                    });
                                                    log(
                                                      "selected color: $item (index $index)",
                                                    );
                                                  },
                                                  child: Container(
                                                    width: 22,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: _costom_colors(
                                                        item,
                                                      ),
                                                      border: Border.all(
                                                        color:
                                                            _selectedColorIndex ==
                                                                index
                                                            ? Colors.red
                                                            : Colors.blue,
                                                        width: 2,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            })
                                            .toList(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Decription",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              AppText(
                                text: widget
                                    .product
                                    .description[_selectedColorIndex], // description for the selected color
                                maxlin: 10,
                                fontWeight: FontWeight.normal,
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            _buildBottomBar(), // this is BottmBar  that costom already
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left, size: 28),
            onPressed: () => Navigator.of(context).maybePop(),
          ),
          const Expanded(
            child: Text(
              'Product Detail',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(
            icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? Colors.redAccent : Colors.black87,
            ),
            onPressed: () => setState(() => _isFavorite = !_isFavorite),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 16,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                addCart();
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                side: const BorderSide(color: Colors.black26),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: const Text(
                //Addcart();
                'Add Cart',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7C8CE0),
                padding: const EdgeInsets.symmetric(vertical: 16),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _costom_colors(String text) {
    switch (text.toLowerCase()) {
      case "gray":
        return Colors.grey;
      case "blue":
        return Colors.blue;
      case "red":
        return Colors.red;
      case "yellow":
        return Colors.yellow;
      case "black":
        return Colors.black;
      case "pink":
        return Colors.pinkAccent;
      default:
        return Colors.grey; // fallback so it never renders null/invalid
    }
  }
}
