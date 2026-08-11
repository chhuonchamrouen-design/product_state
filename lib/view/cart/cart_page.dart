import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/bloc/product_bloc.dart';
import 'package:project/bloc/product_event.dart';
import 'package:project/bloc/product_state.dart';
import 'package:project/util/app_text.dart';
class Cartdscreen extends StatefulWidget {
  const Cartdscreen({super.key});
  @override
  State<Cartdscreen> createState() => _CartdscreenState();
}
class _CartdscreenState extends State<Cartdscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Product cart",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state.cartItem.isEmpty) {
            return Center(child: AppText(text: "Cart Empty"));
          }
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            itemCount: state.cartItem.length,
            separatorBuilder: (_, __) => SizedBox(height: 16),
            itemBuilder: (context, index) {
              final item = state.cartItem[index];
              return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        item.product!.image.toString(),
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(child: Text(item.product!.name)),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: AppText(
                                          text: "Delete Product",
                                          size: 23,
                                        ),
                                        content: AppText(
                                          text:
                                              "Are You Sure Want to Delete...?",
                                          fontWeight: FontWeight.normal,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: AppText(
                                              text: "Cancel",
                                              size: 14,
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              context.read<ProductBloc>().add(
                                                RemoveCartEvent(
                                                  cartModel: item,
                                                ),
                                              );
                                              log(
                                                item.product!.code.toString(),
                                              );
                                              Get.back();
                                            },
                                            child: AppText(
                                              text: "Delete",
                                              colors: Colors.red,
                                              size: 14,
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red.shade200,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "\$${item.product!.price}",
                            style: TextStyle(color: Colors.red),
                          ),
                          Text("Size:${item.size!}"),

                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Color:${item.color!}",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (item.quantity > 1) {
                                    context.read<ProductBloc>().add(
                                      UpdateQuantityCart(
                                        cartModel: item,
                                        quantity: item.quantity - 1,
                                      ),
                                    );
                                  }
                                  log(item.quantity.toString());
                                },
                                icon: Icon(Icons.remove),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                width: 24,
                                child: Text("${item.quantity!}"),
                              ),
                              IconButton(
                                onPressed: () {
                                  context.read<ProductBloc>().add(
                                    UpdateQuantityCart(
                                      cartModel: item,
                                      quantity: item.quantity + 1,
                                    ),
                                  );
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
            decoration: const BoxDecoration(
              color: Color(0xFFFDF1F1),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _summaryRow("Total", state.gettotal),
                //const SizedBox(height: 6),
                _summaryRow("Discount", state.dis()),
                //const SizedBox(height: 6),
                _summaryRow("Delivery", state.devilery),

                Divider(),
                _summaryRow(
                  "Sub Total",
                  state.subtoal(),
                  isBold: true,
                  valueColor: Colors.red,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Check out",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _summaryRow(
    String label,
    double value, {
    bool isBold = false,
    Color? valueColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isBold ? 18 : 15,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
          ),
        ),
        Text(
          "\$${value.toStringAsFixed(2)}",
          style: TextStyle(
            fontSize: isBold ? 18 : 15,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}
